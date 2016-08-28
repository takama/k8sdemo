ETCD: distributed key-value datastore
=====================================

This role setup datastore on the node. Kubernetes uses etcd as the main datastore.

Requirements
------------

A node with preinstalled CentOS 7 or later / RHEL 7 or later.

Role Variables
--------------

Available variables are listed below, along with default values (see `defaults/main.yml`):

    etcd_name: [ default | any datastore name ]
    etcd_host: [ 0.0.0.0 | any datastore host ]
    etcd_port: [ 2379 | any datastore port ]

Datastore name, host and port.

Dependencies
------------

None.

Example Playbook
----------------

Install datastore:

    - hosts: master
      roles:
         - { role: etcd, tags: etcd }

License
-------

[BSD](https://github.com/takama/k8sdemo/blob/master/LICENSE)

Author Information
------------------

[Igor Dolzhikov](https://github.com/takama)
