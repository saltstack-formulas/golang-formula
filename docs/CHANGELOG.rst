
Changelog
=========

`0.7.3 <https://github.com/saltstack-formulas/golang-formula/compare/v0.7.2...v0.7.3>`_ (2020-06-17)
--------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **symlink:** remove space (\ `3db8a99 <https://github.com/saltstack-formulas/golang-formula/commit/3db8a9908141c635ffb254a7b8541a4b40d1f28c>`_\ )

Code Refactoring
^^^^^^^^^^^^^^^^


* **symlink:** remove duplicated symlinking code (\ `c0e4a55 <https://github.com/saltstack-formulas/golang-formula/commit/c0e4a558967e3617411c2a7055c8f8b484ab2d49>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **kitchen:** use ``saltimages`` Docker Hub where available [skip ci] (\ `bf44069 <https://github.com/saltstack-formulas/golang-formula/commit/bf44069956b3f9c611b207dc7831fa5a39bab89e>`_\ )

Documentation
^^^^^^^^^^^^^


* **readme:** set depth one (\ `6d6d0d1 <https://github.com/saltstack-formulas/golang-formula/commit/6d6d0d17865ac8d69f91d60c2e8a8725ac93b04c>`_\ )

`0.7.2 <https://github.com/saltstack-formulas/golang-formula/compare/v0.7.1...v0.7.2>`_ (2020-06-05)
--------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **defaults:** ensure ``path`` is set (for package-based installation) (\ `e7e088b <https://github.com/saltstack-formulas/golang-formula/commit/e7e088bcaf38bc01ccbcd040cc87d1101aae013b>`_\ )
* **pkg:** use correct package name per ``osfamily`` (\ `2677e84 <https://github.com/saltstack-formulas/golang-formula/commit/2677e840d1ca41c410b2ac1e8870357f779e1814>`_\ )
* **repo:** fix relative includes cannot be used for ``sls`` requisites (\ `6049382 <https://github.com/saltstack-formulas/golang-formula/commit/6049382287898564e85d073a1d41ae4daff401b1>`_\ ), closes `#41 <https://github.com/saltstack-formulas/golang-formula/issues/41>`_

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **kitchen+travis+inspec:** add ``package`` suite (\ `aba6e4c <https://github.com/saltstack-formulas/golang-formula/commit/aba6e4cd7936ed8180e1d6b6dd7afea7d684b1b3>`_\ )

`0.7.1 <https://github.com/saltstack-formulas/golang-formula/compare/v0.7.0...v0.7.1>`_ (2020-06-04)
--------------------------------------------------------------------------------------------------------

Documentation
^^^^^^^^^^^^^


* **readme:** fix leader sentence (\ `aa41de2 <https://github.com/saltstack-formulas/golang-formula/commit/aa41de2cea0acfcb31feffefe122914ffd026b2a>`_\ )

`0.7.0 <https://github.com/saltstack-formulas/golang-formula/compare/v0.6.5...v0.7.0>`_ (2020-06-03)
--------------------------------------------------------------------------------------------------------

Code Refactoring
^^^^^^^^^^^^^^^^


* **ci:** move superfluous ruby file (\ `3df2daa <https://github.com/saltstack-formulas/golang-formula/commit/3df2daac7a579c1bd082d887e95d3f8f011e1fd6>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **kitchen+travis:** use latest pre-salted images (\ `ed45614 <https://github.com/saltstack-formulas/golang-formula/commit/ed4561457bd4dc450fe2637d9f5e9dcb92031444>`_\ )

Features
^^^^^^^^


* **macos:** support for homebrew (\ `8a9b380 <https://github.com/saltstack-formulas/golang-formula/commit/8a9b3806ef1c147bf84247b0649f00e41c1f4f96>`_\ )

`0.6.5 <https://github.com/saltstack-formulas/golang-formula/compare/v0.6.4...v0.6.5>`_ (2020-05-21)
--------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **config:** godoc command not in go1.14 (\ `97e3f3a <https://github.com/saltstack-formulas/golang-formula/commit/97e3f3ac1586b8d81a6b0130c10431abc9d428f9>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **tests:** fix and simplify tests (\ `e4fb434 <https://github.com/saltstack-formulas/golang-formula/commit/e4fb4340b95a4c5866d75cb593ae17acd92ddfa3>`_\ )

`0.6.4 <https://github.com/saltstack-formulas/golang-formula/compare/v0.6.3...v0.6.4>`_ (2020-05-21)
--------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **cmd:** only run go cmd if go cmd found (\ `142f89d <https://github.com/saltstack-formulas/golang-formula/commit/142f89dede5cf66539f60641fb62df6bdff72f07>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **gemfile.lock:** add to repo with updated ``Gemfile`` [skip ci] (\ `f776591 <https://github.com/saltstack-formulas/golang-formula/commit/f776591e3f1b689c9f93e03394e9d88e04645320>`_\ )
* **kitchen+travis:** remove ``master-py2-arch-base-latest`` [skip ci] (\ `2dd532a <https://github.com/saltstack-formulas/golang-formula/commit/2dd532a96de0732c9731c33c9bc5b0dca334eb78>`_\ )
* **travis:** add notifications => zulip [skip ci] (\ `01fa4d1 <https://github.com/saltstack-formulas/golang-formula/commit/01fa4d1dd1277843932019a966d253bcd381a2a7>`_\ )
* **workflows/commitlint:** add to repo [skip ci] (\ `a2a2d7d <https://github.com/saltstack-formulas/golang-formula/commit/a2a2d7d4d7017e73ac9040b6c7b6d572427a0066>`_\ )

`0.6.3 <https://github.com/saltstack-formulas/golang-formula/compare/v0.6.2...v0.6.3>`_ (2020-03-28)
--------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **hardcoding:** configurable user/group (\ `1f03949 <https://github.com/saltstack-formulas/golang-formula/commit/1f03949d8c66148ebba995f45f14a8837f454281>`_\ )

`0.6.2 <https://github.com/saltstack-formulas/golang-formula/compare/v0.6.1...v0.6.2>`_ (2020-03-19)
--------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **alternatives:** better no alternatives support (\ `04caf8e <https://github.com/saltstack-formulas/golang-formula/commit/04caf8eac0bb15e4a113a73fa3c54b97b341724a>`_\ )
* **libtofs:** “files_switch” mess up the variable exported by “map.jinja” [skip ci] (\ `e38ff4b <https://github.com/saltstack-formulas/golang-formula/commit/e38ff4b13f612b08c64089cf0bf84ade44f433d5>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **kitchen:** avoid using bootstrap for ``master`` instances [skip ci] (\ `959cc56 <https://github.com/saltstack-formulas/golang-formula/commit/959cc561d42539d3cf654010cff9eb77056d4261>`_\ )

Tests
^^^^^


* **rubucop:** fix rubo issues (\ `ccc1f07 <https://github.com/saltstack-formulas/golang-formula/commit/ccc1f072994e376904634c272335fccee2b9082b>`_\ )

`0.6.1 <https://github.com/saltstack-formulas/golang-formula/compare/v0.6.0...v0.6.1>`_ (2020-01-26)
--------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **gemfile:** restore content inadvertently removed (\ `5bb9f41 <https://github.com/saltstack-formulas/golang-formula/commit/5bb9f41c248f3b4200be236328d00e54ea834c33>`_\ )

`0.6.0 <https://github.com/saltstack-formulas/golang-formula/compare/v0.5.0...v0.6.0>`_ (2020-01-25)
--------------------------------------------------------------------------------------------------------

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **gemfile:** restrict ``train`` gem version until upstream fix [skip ci] (\ `7500241 <https://github.com/saltstack-formulas/golang-formula/commit/75002412d5dd1ebe533e84e27506bf850218c146>`_\ )
* **travis:** opt-in to ``dpl v2`` to complete build config validation [skip ci] (\ `a9f7692 <https://github.com/saltstack-formulas/golang-formula/commit/a9f769262b4d5e9d5a0d03acce2a91e55720e1b3>`_\ )
* **travis:** quote pathspecs used with ``git ls-files`` [skip ci] (\ `58507a1 <https://github.com/saltstack-formulas/golang-formula/commit/58507a15e8229f691a5867ba6e1c3401bc36ef42>`_\ )
* **travis:** run ``shellcheck`` during lint job [skip ci] (\ `1888009 <https://github.com/saltstack-formulas/golang-formula/commit/1888009847005c12edbad044c3bd99be4c0e8c47>`_\ )
* **travis:** use ``major.minor`` for ``semantic-release`` version [skip ci] (\ `beec7fc <https://github.com/saltstack-formulas/golang-formula/commit/beec7fc37e6507dcda27ed35cd9cca5bb6c01f64>`_\ )

Documentation
^^^^^^^^^^^^^


* **readme:** clarify gopath and goroot (\ `22c320e <https://github.com/saltstack-formulas/golang-formula/commit/22c320eb9819259bb92577889a525cd922441825>`_\ )

Features
^^^^^^^^


* **alternatives,macos:** better msupport (\ `6d3286d <https://github.com/saltstack-formulas/golang-formula/commit/6d3286d135aebbb15e815569f66bc885147cb428>`_\ )

Tests
^^^^^


* **env:** update paths (\ `6915789 <https://github.com/saltstack-formulas/golang-formula/commit/69157892927eb2a2d0301fbf09c93f7cb9298546>`_\ )
* **rubo:** fix some lint errors (\ `a0c49f3 <https://github.com/saltstack-formulas/golang-formula/commit/a0c49f31d6dd896ab5eb7e3ea30a3c06692c745e>`_\ )

`0.5.0 <https://github.com/saltstack-formulas/golang-formula/compare/v0.4.1...v0.5.0>`_ (2019-11-18)
--------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **lint:** remove trailing whitespace (\ `376ae12 <https://github.com/saltstack-formulas/golang-formula/commit/376ae120e51ea5a999bd08b2a1fbc63fbaa4fb71>`_\ )
* **release.config.js:** use full commit hash in commit link [skip ci] (\ `1ad448c <https://github.com/saltstack-formulas/golang-formula/commit/1ad448c5826b1c94aadf8b6505534cb823ba454d>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **kitchen:** use ``debian-10-master-py3`` instead of ``develop`` [skip ci] (\ `abb585a <https://github.com/saltstack-formulas/golang-formula/commit/abb585a25dcdd25ae502bfcd0bfe2ad70e1b8963>`_\ )
* **kitchen:** use ``develop`` image until ``master`` is ready (\ ``amazonlinux``\ ) [skip ci] (\ `fef6a02 <https://github.com/saltstack-formulas/golang-formula/commit/fef6a02c650c06a3525f63d76758826632504ee6>`_\ )
* **kitchen+travis:** upgrade matrix after ``2019.2.2`` release [skip ci] (\ `482a5cf <https://github.com/saltstack-formulas/golang-formula/commit/482a5cf341beadadbddf5b44655bc584f9bc85c8>`_\ )
* **travis:** apply changes from build config validation [skip ci] (\ `11a27e2 <https://github.com/saltstack-formulas/golang-formula/commit/11a27e2bb98e010830144fa2c99a583576fe0eb5>`_\ )
* **travis:** update ``salt-lint`` config for ``v0.0.10`` [skip ci] (\ `f338411 <https://github.com/saltstack-formulas/golang-formula/commit/f338411dd882e0440989376bf3990ae8ee6dd436>`_\ )
* **travis:** use build config validation (beta) [skip ci] (\ `ecbb850 <https://github.com/saltstack-formulas/golang-formula/commit/ecbb8503ffb586945fc87d1ccda4188e59582017>`_\ )
* merge travis matrix, add ``salt-lint`` & ``rubocop`` to ``lint`` job (\ `3423c80 <https://github.com/saltstack-formulas/golang-formula/commit/3423c80004190e433926a4a172cecd66cc435828>`_\ )

Documentation
^^^^^^^^^^^^^


* **contributing:** remove to use org-level file instead [skip ci] (\ `1501bc4 <https://github.com/saltstack-formulas/golang-formula/commit/1501bc443ef0d0ef7603d78c30d020f4e48c2a87>`_\ )
* **readme:** update link to ``CONTRIBUTING`` [skip ci] (\ `8dd1192 <https://github.com/saltstack-formulas/golang-formula/commit/8dd11925e183a88c28b73d6a6a2eea20a30d4af1>`_\ )

Features
^^^^^^^^


* **go.cmd:** basic go command support (\ `34653d5 <https://github.com/saltstack-formulas/golang-formula/commit/34653d51d6065204bd175f5fcfb91f845ef52bca>`_\ )

Performance Improvements
^^^^^^^^^^^^^^^^^^^^^^^^


* **travis:** improve ``salt-lint`` invocation [skip ci] (\ `3e1c574 <https://github.com/saltstack-formulas/golang-formula/commit/3e1c574d691028e220e9c628a20dbf549a0d1c7a>`_\ )

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
