# -*- coding: utf-8 -*-
# vim: ft=sls
{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import golang with context %}

{%- if grains.os_family == "FreeBSD" %}
golang-cmd-goget-pkg-installed-git:
  pkg.installed:
    - name: git
{%- endif %}

    {%- for package in golang.cmd.goget %}

golang-cmd-goget-cmd-run-go-get-{{ package }}:
  cmd.run:
    - name: go get {{ package }}
    - runas: {{ golang.rootuser }}
    - onlyif: which go || test -f /usr/local/bin/go
    {%- if grains.os_family == "FreeBSD" %}
    - require:
      - pkg: golang-cmd-goget-pkg-installed-git
    {%- endif %}

    {%- endfor %}
