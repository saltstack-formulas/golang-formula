# Changelog

# [0.5.0](https://github.com/saltstack-formulas/golang-formula/compare/v0.4.1...v0.5.0) (2019-11-18)


### Bug Fixes

* **lint:** remove trailing whitespace ([376ae12](https://github.com/saltstack-formulas/golang-formula/commit/376ae120e51ea5a999bd08b2a1fbc63fbaa4fb71))
* **release.config.js:** use full commit hash in commit link [skip ci] ([1ad448c](https://github.com/saltstack-formulas/golang-formula/commit/1ad448c5826b1c94aadf8b6505534cb823ba454d))


### Continuous Integration

* **kitchen:** use `debian-10-master-py3` instead of `develop` [skip ci] ([abb585a](https://github.com/saltstack-formulas/golang-formula/commit/abb585a25dcdd25ae502bfcd0bfe2ad70e1b8963))
* **kitchen:** use `develop` image until `master` is ready (`amazonlinux`) [skip ci] ([fef6a02](https://github.com/saltstack-formulas/golang-formula/commit/fef6a02c650c06a3525f63d76758826632504ee6))
* **kitchen+travis:** upgrade matrix after `2019.2.2` release [skip ci] ([482a5cf](https://github.com/saltstack-formulas/golang-formula/commit/482a5cf341beadadbddf5b44655bc584f9bc85c8))
* **travis:** apply changes from build config validation [skip ci] ([11a27e2](https://github.com/saltstack-formulas/golang-formula/commit/11a27e2bb98e010830144fa2c99a583576fe0eb5))
* **travis:** update `salt-lint` config for `v0.0.10` [skip ci] ([f338411](https://github.com/saltstack-formulas/golang-formula/commit/f338411dd882e0440989376bf3990ae8ee6dd436))
* **travis:** use build config validation (beta) [skip ci] ([ecbb850](https://github.com/saltstack-formulas/golang-formula/commit/ecbb8503ffb586945fc87d1ccda4188e59582017))
* merge travis matrix, add `salt-lint` & `rubocop` to `lint` job ([3423c80](https://github.com/saltstack-formulas/golang-formula/commit/3423c80004190e433926a4a172cecd66cc435828))


### Documentation

* **contributing:** remove to use org-level file instead [skip ci] ([1501bc4](https://github.com/saltstack-formulas/golang-formula/commit/1501bc443ef0d0ef7603d78c30d020f4e48c2a87))
* **readme:** update link to `CONTRIBUTING` [skip ci] ([8dd1192](https://github.com/saltstack-formulas/golang-formula/commit/8dd11925e183a88c28b73d6a6a2eea20a30d4af1))


### Features

* **go.cmd:** basic go command support ([34653d5](https://github.com/saltstack-formulas/golang-formula/commit/34653d51d6065204bd175f5fcfb91f845ef52bca))


### Performance Improvements

* **travis:** improve `salt-lint` invocation [skip ci] ([3e1c574](https://github.com/saltstack-formulas/golang-formula/commit/3e1c574d691028e220e9c628a20dbf549a0d1c7a))

## [0.4.1](https://github.com/saltstack-formulas/golang-formula/compare/v0.4.0...v0.4.1) (2019-10-10)


### Bug Fixes

* **install.sls:** fix `salt-lint` errors ([](https://github.com/saltstack-formulas/golang-formula/commit/4193037))
* **install.sls:** fix `salt-lint` errors ([](https://github.com/saltstack-formulas/golang-formula/commit/c23bce9))


### Continuous Integration

* **kitchen:** change `log_level` to `debug` instead of `info` ([](https://github.com/saltstack-formulas/golang-formula/commit/793fd34))
* **kitchen:** install required packages to bootstrapped `opensuse` [skip ci] ([](https://github.com/saltstack-formulas/golang-formula/commit/faad94f))
* **kitchen:** use bootstrapped `opensuse` images until `2019.2.2` [skip ci] ([](https://github.com/saltstack-formulas/golang-formula/commit/2cdbe09))
* **kitchen+travis:** replace EOL pre-salted images ([](https://github.com/saltstack-formulas/golang-formula/commit/b0ee510))
* **platform:** add `arch-base-latest` (commented out for now) [skip ci] ([](https://github.com/saltstack-formulas/golang-formula/commit/bbf9fa1))
* **yamllint:** add rule `empty-values` & use new `yaml-files` setting ([](https://github.com/saltstack-formulas/golang-formula/commit/fa990a9))
* merge travis matrix, add `salt-lint` & `rubocop` to `lint` job ([](https://github.com/saltstack-formulas/golang-formula/commit/2ab9c36))
* use `dist: bionic` & apply `opensuse-leap-15` SCP error workaround ([](https://github.com/saltstack-formulas/golang-formula/commit/0977f1f))

# [0.4.0](https://github.com/saltstack-formulas/golang-formula/compare/v0.3.3...v0.4.0) (2019-08-17)


### Features

* **yamllint:** include for this repo and apply rules throughout ([76262f8](https://github.com/saltstack-formulas/golang-formula/commit/76262f8))

## [0.3.3](https://github.com/saltstack-formulas/golang-formula/compare/v0.3.2...v0.3.3) (2019-07-23)


### Bug Fixes

* **archives_spec:** check `sha256sum` for correct file ([99aa62e](https://github.com/saltstack-formulas/golang-formula/commit/99aa62e))
* **archives_spec:** remove colon from `tag:` ([57d445c](https://github.com/saltstack-formulas/golang-formula/commit/57d445c))

## [0.3.2](https://github.com/saltstack-formulas/golang-formula/compare/v0.3.1...v0.3.2) (2019-06-28)


### Bug Fixes

* **`semantic-release`:** finalise changes from `template-formula` ([a38392d](https://github.com/saltstack-formulas/golang-formula/commit/a38392d)), closes [#20](https://github.com/saltstack-formulas/golang-formula/issues/20)

## [0.3.1](https://github.com/saltstack-formulas/golang-formula/compare/v0.3.0...v0.3.1) (2019-06-25)


### Bug Fixes

* **clean:** check for alternative before calling remove ([3b75421](https://github.com/saltstack-formulas/golang-formula/commit/3b75421))
* **init:** remove rebase comment ([c76d7cd](https://github.com/saltstack-formulas/golang-formula/commit/c76d7cd))
* **source_hash:** remove unused 'source_hash' consant ([a12c5f7](https://github.com/saltstack-formulas/golang-formula/commit/a12c5f7))


### Tests

* **fixes:** fix two kitchen test failures ([b01a5d4](https://github.com/saltstack-formulas/golang-formula/commit/b01a5d4))
* **inspec:** add golang archive unittests ([6feafa9](https://github.com/saltstack-formulas/golang-formula/commit/6feafa9))
