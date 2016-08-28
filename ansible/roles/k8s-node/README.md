Kubernetes: node service
========================

This role setup Kubernetes on the node (Kubelet, Kube-proxy).

Requirements
------------

A node with preinstalled CentOS 7 or later / RHEL 7 or later.

Role Variables
--------------

Available variables are listed below, along with default values (see `defaults/main.yml`):

	master_ipv4: []
	master_ipv6: []

IP addresses of the master

	nodes_ipv4: []
	nodes_ipv6: []

IP addresses of the nodes

	datastore_host: 0.0.0.0
	datastore_port: 2379

Datastore host and port

	master_host: 0.0.0.0
	master_port: 8080

The Master host and port

	k8s_node_config: '/etc/kubernetes'

Kubernetes config path


Dependencies
------------

None.

Example Playbook
----------------

Install datastore:

    - hosts: node
      roles:
         - { role: k8s-node, tags: k8s-node }

License
-------

[BSD](https://github.com/takama/k8sdemo/blob/master/LICENSE)

Author Information
------------------

[Igor Dolzhikov](https://github.com/takama)
