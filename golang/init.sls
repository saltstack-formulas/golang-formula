{% from "golang/map.jinja" import golang with context %}
# Installing Golang is pretty easy, thanks Googs, so basically all we need to
# do is pull down an archive and unpack it somewhere.  To allow for versioning,
# we use a extract the tarball to <prefix>/golang/<version>/go and then create
# a symlink back to `golang:lookup:go_root` which defaults to /usr/local/go

# In the interest of being good netizens, we will only pull down the archive
# if golang is not installed or the specific version is missing
golang|cache-archive:
  file.managed:
    - name: /tmp/{{ golang.archive_name }}
    - source: https://storage.googleapis.com/golang/{{ golang.archive_name }}
    - source_hash: https://storage.googleapis.com/golang/{{ golang.archive_name }}.sha256
    - user: root
    - group: root
    - retry:
        attempts: 3
        until: True
        interval: 60
        splay: 10
    - unless:
        # asserts go is on our path
        - which go
        # asserts the version of go
        - test -x {{ golang.base_dir }}/go/bin/go

# Extract the archive locally to golang:lookup:base_dir: which has our version
# schema already baked in and extract the archive if necessary
golang|extract-archive:
  file.directory:
    - names:
        - {{ golang.base_dir }}
        - {{ golang.go_path }}
    - user: root
    - group: root
    - mode: 755
    - makedirs: True
    - unless:
        - test -d {{ golang.base_dir }}
    - recurse:
        - user
        - group
        - mode

  archive.extracted:
    - name: {{ golang.base_dir }}
    - source: "/tmp/{{ golang.archive_name }}"
    - source_hash: https://storage.googleapis.com/golang/{{ golang.archive_name }}.sha256
    - archive_format: tar
    - user: root
    - group: root
    - options: v
    - trim_output: True   {# works in 2018.3.2. onwards #}
    - watch:
        - file: golang|cache-archive
    # golang|cache-archive already applies these predicates and the watch
    # statement should cover us, paranoia is an applied art.
    - unless:
        - go version | grep {{ golang.version }}
        - test -x {{ golang.base_dir }}/go/bin/go

  {%- if golang.linux.altpriority > 0 %}

# add a symlink from versioned install to point at golang:lookup:go_root
golang|install-home-alternative:
  alternatives.install:
    - name: golang-home-link
    - link: {{ golang.go_root }}
    - path: {{ golang.base_dir }}/go/
    - priority: {{ golang.linux.altpriority }}
    - order: 10
    - watch:
        - archive: golang|extract-archive
    - retry:
        attempts: 2
        until: True

golang|set-home-alternative:
  alternatives.set:
    - name: golang-home-link
    - path: {{ golang.base_dir }}/go/
    - require:
      - alternatives: golang|install-home-alternative

     {% for i in ['go', 'godoc', 'gofmt'] %}

     #manage symlinks to /usr/bin for the three go commands
golang|create-symlink-{{ i }}:
  alternatives.install:
    - name: link-{{ i }}
    - link: /usr/bin/{{ i }}
    - path: {{ golang.base_dir }}/go/bin/{{ i }}
    - priority: {{ golang.linux.altpriority }}
    - order: 10
    - watch:
      - archive: golang|extract-archive
    - require:
      - alternatives: golang|install-home-alternative
      - alternatives: golang|set-home-alternative
    - retry:
        attempts: 2
        until: True

golang|set-symlink={{ i }}:
  alternatives.set:
    - name: link-{{ i }}
    - path: {{ golang.base_dir }}/go/bin/{{ i }}
    - require:
      - alternatives: golang|create-symlink-{{ i }}

     {% endfor %}
  {%- endif %}

# sets up the necessary environment variables required for golang usage
golang|setup-bash-profile:
  file.managed:
    - name: /etc/profile.d/golang.sh
    - source:
        - salt://files/go_profile.sh
        - salt://golang/files/go_profile.sh
    - template: jinja
    - mode: 644
    - user: root
    - group: root
