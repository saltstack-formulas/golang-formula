# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- set sls_archive_install = tplroot ~ '.archive.install' %}
{%- set sls_package_install = tplroot ~ '.package.install' %}
{%- from tplroot ~ "/map.jinja" import golang with context %}
{%- from tplroot ~ "/libtofs.jinja" import files_switch with context %}

include:
  - {{ sls_archive_install if golang.pkg.use_upstream_archive else sls_package_install }}

golang-config-file-managed-environ_file:
  file.managed:
    - name: {{ golang.environ_file }}
    - source: {{ files_switch(['golang.sh.jinja'],
                              lookup='golang-config-file-managed-environ_file'
                 )
              }}
    - mode: 644
    - user: {{ golang.rootuser }}
    - group: {{ golang.rootgroup }}
    - makedirs: True
    - template: jinja
    - context:
        golang: {{ golang|json }}
    - require:
      - sls: {{ sls_archive_install if golang.pkg.use_upstream_archive else sls_package_install }}
