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
    - user: {{ golang.rootuser }}
    - group: {{ golang.rootgroup }}
    - mode: 755
    - makedirs: True
    - require_in:
      - archive: golang-package-archive-install-archive-extracted
    - recurse:
        - user
        - group
        - mode

golang-package-archive-install-archive-extracted:
  archive.extracted:
    {{- format_kwargs(golang.pkg.archive) }}
    - retry:
        attempts: 3
        until: True
        interval: 60
        splay: 10
    - user: root
    - group: root
