# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import golang with context %}
{%- set sls_archive_clean = tplroot ~ '.archive.clean' %}
{%- set sls_package_clean = tplroot ~ '.package.clean' %}

  {%- if golang.kernel == 'linux' and golang.linux.altpriority|int > 0 %}

include:
  - {{ sls_archive_clean if golang.pkg.use_upstream_archive else sls_package_clean }}

golang-package-archive-remove-home-alternative-remove:
  alternatives.remove:
    - name: golang-home
    - path: {{ golang.linux.base_dir }}/go
    - onlyif: update-alternatives --get-selections |grep ^golang-home
    - require:
      - sls: {{ sls_archive_clean if golang.pkg.use_upstream_archive else sls_package_clean }}

      {% for i in ['go', 'godoc', 'gofmt'] %}

golang-package-archive-remove-{{ i }}-alternative-remove:
  alternatives.remove:
    - name: link-{{ i }}
    - path: {{ golang.linux.base_dir }}/go/bin/{{ i }}
    - onlyif: update-alternatives --get-selections |grep ^link-{{ i }}
    - require:
      - sls: {{ sls_archive_clean if golang.pkg.use_upstream_archive else sls_package_clean }}

     {% endfor %}
  {%- endif %}
