Kubernetes: master node
=======================

This role setup Kubernetes service on master node: API server, Controller manager, Scheduler.

Requirements
------------

A node with preinstalled CentOS 7 or later / RHEL 7 or later.

Role Variables
--------------

Available variables are listed below, along with default values (see `defaults/main.yml`):

	k8s_master_service_cluster_ip: [ 10.254.0.0/16 | any subnet]

Kubernets cluster subnet

	k8s_master_etcd_host: [ 0.0.0.0 | any host ]
	k8s_master_etcd_port: [ 2379 | any post ]

Datastore host and port.

	k8s_master_config: [ /etc/kubernetes | any path ]

Kubernetes configs path

	k8s_master_pod_infra_image: [ docker image ]
	k8s_master_api_server_image: [ docker image ]
	k8s_master_controller_mgr_image: [ docker image ]
	k8s_master_scheduler_image: [ docker image ]

Infrastructure, API server, Controller manager, Scheduler docker images

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
