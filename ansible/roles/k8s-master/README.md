Kubernetes: master service
==========================

This role setup Kubernetes on master node (API server, Controller Manager, Scheduller).

Requirements
------------

A node with preinstalled CentOS 7 or later / RHEL 7 or later.

Role Variables
--------------

Available variables are listed below, along with default values (see `defaults/main.yml`):

	nodes_ipv4: []
	nodes_ipv6: []

IP addresses of the nodes

	datastore_host: 0.0.0.0
	datastore_port: 2379

Datastore host and port

	k8s_master_service_cluster_ip: '10.254.0.0/16'

Cluster subnet

	k8s_master_config: '/etc/kubernetes'

Kubernetes config path

	k8s_master_pod_infra_image: 'registry.access.redhat.com/rhel7/pod-infrastructure'
	k8s_master_api_server_image: 'registry.access.redhat.com/rhel7/kubernetes-apiserver'
	k8s_master_controller_mgr_image: 'registry.access.redhat.com/rhel7/kubernetes-controller-mgr'
	k8s_master_scheduler_image: 'registry.access.redhat.com/rhel7/kubernetes-scheduler'

Kubernetes services images (Infrastructure, API server, Controller Manager, Scheduller).

Dependencies
------------

None.

Example Playbook
----------------

Install datastore:

    - hosts: master
      roles:
         - { role: k8s-master, tags: k8s-master }

License
-------

[BSD](https://github.com/takama/k8sdemo/blob/master/LICENSE)

Author Information
------------------

[Igor Dolzhikov](https://github.com/takama)
