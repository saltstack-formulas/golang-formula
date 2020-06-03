# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- set sls_config_clean = tplroot ~ '.config.clean' %}
{%- set sls_repo_clean = '.repo.clean' %}
{%- from tplroot ~ "/map.jinja" import golang with context %}

include:
  - {{ sls_config_clean }}
        {%- if grains.kernel|lower == 'linux' %}
  - {{ sls_repo_clean }}

golang-package-clean-pkg-cleaned:
  pkg.removed:
    - name: {{ golang.pkg.name }}
    - require:
      - sls: {{ sls_config_clean }}
      - sls: {{ sls_repo_clean }}

        {%- elif grains.os_family == 'MacOS' %}

golang-package-clean-cmd-run-brew:
  cmd.run:
    - name: brew uninstall --force {{ golang.pkg.name }}
    - runas: {{ golang.rootuser }}
    - onlyif: test -x /usr/local/bin/brew
    - require:
      - sls: {{ sls_config_clean }}

        {%- endif %}
