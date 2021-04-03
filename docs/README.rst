.. _readme:

golang-formula
==============

|img_travis| |img_sr|

.. |img_travis| image:: https://travis-ci.com/saltstack-formulas/golang-formula.svg?branch=master
   :alt: Travis CI Build Status
   :scale: 100%
   :target: https://travis-ci.com/saltstack-formulas/golang-formula
.. |img_sr| image:: https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg
   :alt: Semantic Release
   :scale: 100%
   :target: https://github.com/semantic-release/semantic-release

Deploy and manage golang using Salt.

.. contents:: **Table of Contents**
   :depth: 1

General notes
-------------

See the full `SaltStack Formulas installation and usage instructions
<https://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

If you are interested in writing or contributing to formulas, please pay attention to the `Writing Formula Section
<https://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html#writing-formulas>`_.

If you want to use this formula, please pay attention to the ``FORMULA`` file and/or ``git tag``,
which contains the currently released version. This formula is versioned according to `Semantic Versioning <http://semver.org/>`_.

If you need (non-default) configuration, please pay attention to the ``pillar.example`` file and/or `Special notes`_ section.

See `Formula Versioning Section <https://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html#versioning>`_ for more details.

Contributing to this repo
-------------------------

**Commit message formatting is significant!!**

Please see `How to contribute <https://github.com/saltstack-formulas/.github/blob/master/CONTRIBUTING.rst>`_ for more details.

Special notes
-------------

This formula uses (non-default) GOPATH environment variable on Unix by default; see ``go_path`` key in ``defaults.yaml`` and ``pillar.example`` files. Normally GOPATH defaults to ``$HOME/go`` on Unix/Darwin, ``$home/go`` on Plan9, and ``%USERPROFILE%\go`` on Windows; another common setup is ``GOPATH=$HOME && export PATH=$PATH:$(go env GOPATH)/bin`` too.

Available states
----------------

.. contents::
   :local:

``golang``
^^^^^^^^^^

*Meta-state (This is a state that includes other states)*.

This installs the golang package,
manages the golang configuration file and then
starts the associated golang service.

``golang.package``
^^^^^^^^^^^^^^^^^^

This state will install the golang package only.

``golang.config``
^^^^^^^^^^^^^^^^^

This state will configure the golang service and has a dependency on ``golang.install``
via include list.

``golang.service``
^^^^^^^^^^^^^^^^^^

This state will start the golang service and has a dependency on ``golang.config``
via include list.

``golang.cmd``
^^^^^^^^^^^^^^

This is a metastate for go command tasks.

``golang.cmd.clean``
^^^^^^^^^^^^^^^^^^^^

This state runs ``go clean -i <item>...`` for each item in ``cmd.clean`` dict.

``golang.cmd.goget``
^^^^^^^^^^^^^^^^^^^^

This state runs ``go get <item>...`` for each item in ``cmd.get`` dict.


``golang.clean``
^^^^^^^^^^^^^^^^

*Meta-state (This is a state that includes other states)*.

this state will undo everything performed in the ``golang`` meta-state in reverse order, i.e.
stops the service,
removes the configuration file and
then uninstalls the package.

``golang.service.clean``
^^^^^^^^^^^^^^^^^^^^^^^^

This state will stop the golang service and disable it at boot time.

``golang.config.clean``
^^^^^^^^^^^^^^^^^^^^^^^

This state will remove the configuration of the golang service and has a
dependency on ``golang.service.clean`` via include list.

``golang.package.clean``
^^^^^^^^^^^^^^^^^^^^^^^^

This state will remove the golang package and has a depency on
``golang.config.clean`` via include list.

Testing
-------

Linux testing is done with ``kitchen-salt``.

Requirements
^^^^^^^^^^^^

* Ruby
* Docker

.. code-block:: bash

   $ gem install bundler
   $ bundle install
   $ bin/kitchen test [platform]

Where ``[platform]`` is the platform name defined in ``kitchen.yml``,
e.g. ``debian-9-2019-2-py3``.

``bin/kitchen converge``
^^^^^^^^^^^^^^^^^^^^^^^^

Creates the docker instance and runs the ``golang`` main state, ready for testing.

``bin/kitchen verify``
^^^^^^^^^^^^^^^^^^^^^^

Runs the ``inspec`` tests on the actual instance.

``bin/kitchen destroy``
^^^^^^^^^^^^^^^^^^^^^^^

Removes the docker instance.

``bin/kitchen test``
^^^^^^^^^^^^^^^^^^^^

Runs all of the stages above in one go: i.e. ``destroy`` + ``converge`` + ``verify`` + ``destroy``.

``bin/kitchen login``
^^^^^^^^^^^^^^^^^^^^^

Gives you SSH access to the instance for manual testing.

Testing with Vagrant
--------------------

Windows/FreeBSD/OpenBSD testing is done with ``kitchen-salt``.

Requirements
^^^^^^^^^^^^

* Ruby
* Virtualbox
* Vagrant

Setup
^^^^^

.. code-block:: bash

   $ gem install bundler
   $ bundle install --with=vagrant
   $ bin/kitchen test [platform]

Where ``[platform]`` is the platform name defined in ``kitchen.vagrant.yml``,
e.g. ``windows-81-latest-py3``.

Note
^^^^

When testing using Vagrant you must set the environment variable ``KITCHEN_LOCAL_YAML`` to ``kitchen.vagrant.yml``.  For example:

.. code-block:: bash

   $ KITCHEN_LOCAL_YAML=kitchen.vagrant.yml bin/kitchen test      # Alternatively,
   $ export KITCHEN_LOCAL_YAML=kitchen.vagrant.yml
   $ bin/kitchen test

Then run the following commands as needed.

``bin/kitchen converge``
^^^^^^^^^^^^^^^^^^^^^^^^

Creates the Vagrant instance and runs the ``golang`` main states, ready for testing.

``bin/kitchen verify``
^^^^^^^^^^^^^^^^^^^^^^

Runs the ``inspec`` tests on the actual instance.

``bin/kitchen destroy``
^^^^^^^^^^^^^^^^^^^^^^^

Removes the Vagrant instance.

``bin/kitchen test``
^^^^^^^^^^^^^^^^^^^^

Runs all of the stages above in one go: i.e. ``destroy`` + ``converge`` + ``verify`` + ``destroy``.

``bin/kitchen login``
^^^^^^^^^^^^^^^^^^^^^

Gives you RDP/SSH access to the instance for manual testing.
