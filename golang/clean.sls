{% from "golang/map.jinja" import golang with context %}

  {%- if golang.linux.altpriority > 0 %}

     {% for i in ['go', 'godoc', 'gofmt'] %}
golang|cleanup-symlink-{{ i }}:
  alternatives.remove:
    - name: link-{{ i }}
    - path: {{ golang.base_dir }}/go/bin/{{ i }}
    - onlyif: update-alternatives --get-selections |grep ^link-{{ i }}
     {% endfor %}

golang|cleanup-home-alternative:
  alternatives.remove:
    - name: golang-home-link
    - path: {{ golang.base_dir }}/go/
    - onlyif: update-alternatives --get-selections |grep ^golang-home-link

  {%- endif %}

golang|remove directories:
  file.absent:
    - names:
      - /tmp/{{ golang.archive_name }}
      - {{ golang.base_dir }}
      - {{ golang.go_path }}
      - /etc/profile.d/golang.sh
