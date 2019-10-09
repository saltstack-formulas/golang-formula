# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import golang with context %}

    {%- if golang.pkg.use_upstream_repo %}
include:
  - .repo
    {%- endif %}

golang-package-install-pkg-installed:
  pkg.installed:
    - name: {{ golang.pkg.name }}
