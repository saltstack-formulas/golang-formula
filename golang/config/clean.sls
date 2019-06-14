# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import golang with context %}

include:
  - {{ tplroot ~ '.config.alternatives.clean' }}

golang-config-clean-file-absent:
  file.absent:
    - names:
      - {{ golang.config }}
      - {{ golang.environ_file }}
