# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import golang with context %}
 
    {%- for package in golang.cmd.clean %}

golang-cmd-clean-cmd-run-go-clean-{{ package }}:
  cmd.run:
    - name: go clean -i {{ package }}...
    - runas: {{ golang.rootuser }}

    {%- endfor %}
