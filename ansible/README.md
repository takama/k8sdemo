Kubernetes cluster ansible playbook
===================================

This playbook and set of roles set up a Kubernetes cluster onto machines. They can be real hardware, VMs, things in a public cloud, etc. Anything that you can connect to via SSH.

Requirements
------------

Hosts with preinstalled CentOS 7 or later / RHEL 7 or later.

Before starting
---------------

* Record the hostname of which machine you want to be your master (only support a single master)
* Record the hostname of the machine you want to be your datastore/etcd server (often same as master, only one)
* Record the hostname of the machines you want to be your nodes. (the master can also be a node)
* Make sure your ansible running machine has ansible 2.1.

Configure inventory
-------------------

Add the system information gathered above into a file called `inventory/cluster`,
or create a new one for the cluster.

For example:

```sh
[master]
k8s-master.your-domain

[node]
k8s-node-01.your-domain
k8s-node-02.your-domain

[datastore:children]
master
```

Running the playbook
--------------------

After going through the setup, run the playbook `ansible-playbook playbooks/cluster/setup.yml` from within the `ansible` directory:


License
-------

[BSD](https://github.com/takama/k8sdemo/blob/master/LICENSE)

Author Information
------------------

[Igor Dolzhikov](https://github.com/takama)
