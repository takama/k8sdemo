Docker Engine
=============

This role install docker engine on every node from dependency. Kubernetes uses docker as the container service.

Requirements
------------

A node with preinstalled CentOS 7 or later / RHEL 7 or later.

Role Variables
--------------

Available variables are listed below, along with default values (see `defaults/main.yml`):

    docker_network_options: [ "" | any network options ]

Specific network options for docker engine.

Dependencies
------------

None.

Example Playbook
----------------

Install datastore:

    - hosts: all
      roles:
         - { role: docker, tags: docker }

License
-------

[BSD](https://github.com/takama/k8sdemo/blob/master/LICENSE)

Author Information
------------------

[Igor Dolzhikov](https://github.com/takama)
