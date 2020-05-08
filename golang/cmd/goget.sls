# -*- coding: utf-8 -*-
# vim: ft=sls
{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import golang with context %}

    {%- for package in golang.cmd.goget %}

golang-cmd-goget-cmd-run-go-get-{{ package }}:
  cmd.run:
    - name: go get {{ package }}
    - runas: {{ golang.rootuser }}
    - onlyif: which go || test -f /usr/local/bin/go

    {%- endfor %}
