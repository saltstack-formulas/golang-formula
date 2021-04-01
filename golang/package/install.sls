# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- set sls_repo_install = tplroot ~ '.package.repo.install' %}
{%- from tplroot ~ "/map.jinja" import golang with context %}

        {%- if not grains.os_family == 'MacOS' %}
{%- if golang.pkg.use_upstream_repo %}
include:
  - {{ sls_repo_install }}
{%- endif %}

golang-package-install-pkg-installed:
  pkg.installed:
    - name: {{ golang.pkg.name }}
    - reload_modules: true
    {%- if golang.pkg.use_upstream_repo %}
    - require:
      - sls: {{ sls_repo_install }}
    {%- endif %}

        {%- else %}

golang-package-install-cmd-run-brew:
  cmd.run:
    - name: brew install {{ golang.pkg.name }}
    - runas: {{ golang.rootuser }}
    - onlyif: test -x /usr/local/bin/brew

        {%- endif %}
