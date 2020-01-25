# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import golang with context %}

golang-cli-package-archive-clean-file-absent:
  file.absent:
    - names:
      - {{ golang.pkg.archive.name }}/go
        {%- if golang.kernel == 'linux' %}
      - {{ golang.linux.base_dir }}
        {%- endif %}
