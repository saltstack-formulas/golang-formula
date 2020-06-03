# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- set sls_repo_install = '.repo' %}
{%- from tplroot ~ "/map.jinja" import golang with context %}

        {%- if grains.kernel|lower == 'linux' %}
include:
  - {{ sls_repo_install }}

golang-package-install-pkg-installed:
  pkg.installed:
    - name: {{ golang.pkg.name }}
    - reload_modules: true
    - require:
      - sls: {{ sls_repo_install }}

        {%- elif grains.os_family == 'MacOS' %}

golang-package-install-cmd-run-brew:
  cmd.run:
    - name: brew install {{ golang.pkg.name }}
    - runas: {{ golang.rootuser }}
    - onlyif: test -x /usr/local/bin/brew

        {%- endif %}
