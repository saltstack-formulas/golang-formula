# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import golang with context %}

golang-cli-package-archive-clean-file-absent:
  file.absent:
    - names:
      - {{ golang.pkg.archive.name }}
      - /usr/local/go
      - /usr/local/bin/go
      - /usr/local/bin/gofmt
        {%- if golang.kernel == 'linux' %}
      - {{ golang.path }}
        {%- endif %}
