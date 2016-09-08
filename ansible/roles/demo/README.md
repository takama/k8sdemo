Kubernetes: demo
================

This role setup manifests used in demo services.

Requirements
------------

A node with preinstalled CentOS 7 or later / RHEL 7 or later and Kubernetes client services.

Role Variables
--------------

Available variables are listed below, along with default values (see `defaults/main.yml`):

	demo_ipv4: []

IP addresses of demo nodes

	demo_path:

The path to demo scripts


Dependencies
------------

None.

Example Playbook
----------------

Install datastore:

    - hosts: demo
      roles:
         - { role: demo, tags: demo }

License
-------

[BSD](https://github.com/takama/k8sdemo/blob/master/LICENSE)

Author Information
------------------

[Igor Dolzhikov](https://github.com/takama)
