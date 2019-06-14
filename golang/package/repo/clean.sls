# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import golang with context %}

golang-package-repo-clean-pkgrepo-absent:
  pkgrepo.absent:
    - name: {{ golang.pkg.repo.name }}
