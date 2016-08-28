Flannel: overlay network manager
================================

This role setup flannel on master/slave node. Kubernetes uses flannel as overlay network manager.

Requirements
------------

A node with preinstalled CentOS 7 or later / RHEL 7 or later.

Role Variables
--------------

Available variables are listed below, along with default values (see `defaults/main.yml`):

	datastore_host: 0.0.0.0
	datastore_port: 2379

Datastore host and port

    flanell_etcd_key: [ coreos.io/network | any key ]
    flannel_options: [ "" | any options ]

Flannel configuration.

Dependencies
------------

None.

Example Playbook
----------------

Install datastore:

    - hosts: master
      roles:
         - { role: flannel, tags: flannel }

License
-------

[BSD](https://github.com/takama/k8sdemo/blob/master/LICENSE)

Author Information
------------------

[Igor Dolzhikov](https://github.com/takama)
