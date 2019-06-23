# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- set sls_config_clean = tplroot ~ '.config.clean' %}
{%- from tplroot ~ "/map.jinja" import golang with context %}

include:
  - {{ sls_config_clean }}

    {%- if golang.pkg.use_upstream_repo %}
include:
  - .repo.clean
    {%- endif %}

golang-package-clean-pkg-removed:
  pkg.removed:
    - name: {{ golang.pkg.name }}
    - require:
      - sls: {{ sls_config_clean }}
