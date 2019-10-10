
Changelog
=========

`0.4.1 <https://github.com/saltstack-formulas/golang-formula/compare/v0.4.0...v0.4.1>`_ (2019-10-10)
--------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **install.sls:** fix ``salt-lint`` errors (\ ` <https://github.com/saltstack-formulas/golang-formula/commit/4193037>`_\ )
* **install.sls:** fix ``salt-lint`` errors (\ ` <https://github.com/saltstack-formulas/golang-formula/commit/c23bce9>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **kitchen:** change ``log_level`` to ``debug`` instead of ``info`` (\ ` <https://github.com/saltstack-formulas/golang-formula/commit/793fd34>`_\ )
* **kitchen:** install required packages to bootstrapped ``opensuse`` [skip ci] (\ ` <https://github.com/saltstack-formulas/golang-formula/commit/faad94f>`_\ )
* **kitchen:** use bootstrapped ``opensuse`` images until ``2019.2.2`` [skip ci] (\ ` <https://github.com/saltstack-formulas/golang-formula/commit/2cdbe09>`_\ )
* **kitchen+travis:** replace EOL pre-salted images (\ ` <https://github.com/saltstack-formulas/golang-formula/commit/b0ee510>`_\ )
* **platform:** add ``arch-base-latest`` (commented out for now) [skip ci] (\ ` <https://github.com/saltstack-formulas/golang-formula/commit/bbf9fa1>`_\ )
* **yamllint:** add rule ``empty-values`` & use new ``yaml-files`` setting (\ ` <https://github.com/saltstack-formulas/golang-formula/commit/fa990a9>`_\ )
* merge travis matrix, add ``salt-lint`` & ``rubocop`` to ``lint`` job (\ ` <https://github.com/saltstack-formulas/golang-formula/commit/2ab9c36>`_\ )
* use ``dist: bionic`` & apply ``opensuse-leap-15`` SCP error workaround (\ ` <https://github.com/saltstack-formulas/golang-formula/commit/0977f1f>`_\ )

`0.4.0 <https://github.com/saltstack-formulas/golang-formula/compare/v0.3.3...v0.4.0>`_ (2019-08-17)
--------------------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **yamllint:** include for this repo and apply rules throughout (\ `76262f8 <https://github.com/saltstack-formulas/golang-formula/commit/76262f8>`_\ )

`0.3.3 <https://github.com/saltstack-formulas/golang-formula/compare/v0.3.2...v0.3.3>`_ (2019-07-23)
--------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **archives_spec:** check ``sha256sum`` for correct file (\ `99aa62e <https://github.com/saltstack-formulas/golang-formula/commit/99aa62e>`_\ )
* **archives_spec:** remove colon from ``tag:`` (\ `57d445c <https://github.com/saltstack-formulas/golang-formula/commit/57d445c>`_\ )

`0.3.2 <https://github.com/saltstack-formulas/golang-formula/compare/v0.3.1...v0.3.2>`_ (2019-06-28)
--------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **\ ``semantic-release``\ :** finalise changes from ``template-formula`` (\ `a38392d <https://github.com/saltstack-formulas/golang-formula/commit/a38392d>`_\ ), closes `#20 <https://github.com/saltstack-formulas/golang-formula/issues/20>`_

`0.3.1 <https://github.com/saltstack-formulas/golang-formula/compare/v0.3.0...v0.3.1>`_ (2019-06-25)
--------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **clean:** check for alternative before calling remove (\ `3b75421 <https://github.com/saltstack-formulas/golang-formula/commit/3b75421>`_\ )
* **init:** remove rebase comment (\ `c76d7cd <https://github.com/saltstack-formulas/golang-formula/commit/c76d7cd>`_\ )
* **source_hash:** remove unused 'source_hash' consant (\ `a12c5f7 <https://github.com/saltstack-formulas/golang-formula/commit/a12c5f7>`_\ )

Tests
^^^^^


* **fixes:** fix two kitchen test failures (\ `b01a5d4 <https://github.com/saltstack-formulas/golang-formula/commit/b01a5d4>`_\ )
* **inspec:** add golang archive unittests (\ `6feafa9 <https://github.com/saltstack-formulas/golang-formula/commit/6feafa9>`_\ )
