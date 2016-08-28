Cluster configuration
=====================

This role setup cluster settings into datastore. Kubernetes uses this setting to init his services.

Requirements
------------

A node with preinstalled CentOS 7 or later / RHEL 7 or later.

Role Variables
--------------

Available variables are listed below, along with default values (see `defaults/main.yml`):

	cluster_configs: /var/datastore

Cluster configs directory

	flannel_store_key: coreos.com/network/config
    flannel_network: [ 10.20.0.0/16 | any subnet length ]
    flannel_subnet: [ 24 | any subnet length ]

Flannel key, overlay network and subnet length.

Dependencies
------------

etcd - distributed key-value datastore.

Example Playbook
----------------

Install datastore:

    - hosts: datastore
      roles:
         - { role: config, tags: config }

License
-------

[BSD](https://github.com/takama/k8sdemo/blob/master/LICENSE)

Author Information
------------------

[Igor Dolzhikov](https://github.com/takama)
