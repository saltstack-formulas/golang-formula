# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import golang with context %}
{%- from tplroot ~ "/jinja/macros.jinja" import format_kwargs with context %}

golang-package-archive-install-file-directory:
  file.directory:
    - names:
      - {{ golang.pkg.archive.name }}
      - {{ golang.go_path }}
    - require_in:
      - archive: golang-package-archive-install-archive-extracted
    - makedirs: True
  {%- if grains.os != 'Windows' %}
    - user: {{ golang.rootuser }}
    - group: {{ golang.rootgroup }}
    - mode: 755
    - recurse:
        - user
        - group
        - mode
  {%- endif %}

golang-package-archive-install-archive-extracted:
  archive.extracted:
    {{- format_kwargs(golang.pkg.archive) }}
    - retry: {{ golang.retry_option }}
  {%- if grains.os != 'Windows' %}
    - user: {{ golang.rootuser }}
    - group: {{ golang.rootgroup }}

    {%- if golang.linux.altpriority|int == 0 or grains.os_family in ('Arch', 'FreeBSD', 'MacOS') %}
        {% for i in ('go', 'gofmt') %}

golang-package-archive-install-symlink-{{ i }}:
  file.symlink:
    - name: /usr/local/bin/{{ i }}
    - target: {{ golang.path }}/go/bin/{{ i }}
    - mode: '0755'
    - force: True
    - onlyif: test -x {{ golang.path }}/go/bin/{{ i }}

        {%- endfor %}
    {%- endif %}
  {%- endif %}
