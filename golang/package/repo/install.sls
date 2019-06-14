# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import golang with context %}

  {%- if golang.pkg.use_upstream_repo %}
      {%- from tplroot ~ "/jinja/macros.jinja" import format_kwargs with context %}

golang-package-repo-install-pkgrepo-managed:
  pkgrepo.managed:
    {{- format_kwargs(golang.pkg.repo) }}

  {%- endif %}
