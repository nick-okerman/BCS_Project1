## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

[Network Topology _without_ ELK Stack](Diagrams/Azure_Cloud_Topology.png) \| [Network Topology _with_ ELK Stack](???)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the YAML files may be used to install only certain pieces of it, such as Filebeat.

  - [Ansible Docker Playbook](Ansible/pentest.yml)
  - [Ansible Hosts](Ansible/hosts)
  - [Ansible Configuration](Ansible/ansible.cfg)
  - [Filebeat Configuration](Ansible/filebeat-config.yml)
  - [Filebeat Playbook](Ansible/filebeat-playbook.yml)
  - [Metricbeat Playbook](Ansible/metricbeat-config.yml)
  - [Elk Stack Installation](Ansible/elktest.yml)

***

### This document contains the following details:

- [Description of the Topology](#description-of-the-topology)
- [Access Policies](#access-policies)
- [ELK Configuration](#elk-configuration)
  - [Beats in Use](#target-machines-and-beats)
  - [Machines Being Monitored](#target-machines-and-beats)
- [How to Use the Ansible Build](#using-the-playbook)


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting traffic to the network.
- What aspect of security do load balancers protect?
>  - _Answer:_ Load balancers protect server traffic to ensure no single server becomes overloaded with too much demand. They also protect the availability and accessibility of the data on the servers. If a single server becomes compromised or goes down, the load balancer can redirect the traffic to another server to protect the availability.

- What is the advantage of a jump box?
>  - _Answer:_ Jump box servers or jump box virtual machines (VM) create a separation between the user and the privileged network which improves security. They also improve productivity by allowing the Security Administrator access to the select networks, server, or VMs through one portal.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the data and system logs.
- What does Filebeat watch for?
>  - _Answer:_ Filebeat watches for log files or locations that are specific to the users choice.

- What does Metricbeat record?
>  - _Answer:_ Metricbeat records the metrics and stats it has collected and ships them to the output that is specified by the user.

#### The configuration details of each machine may be found below.

| Name       | Function      | IP Address                 | Operating System |
|------------|---------------|----------------------------|------------------|
| Jump Box   | Gateway       | 10.0.0.4 / 20.228.188.232  | Linux            |
| Web 1      | DVWA          | 10.0.0.5                   | Linux            |
| Web 2      | DVWA          | 10.0.0.7                   | Linux            |
| Web 3      | DWVA          | 10.0.0.6                   | Linux            |
| ELK Server | Kibana Access | 10.1.0.4                   | Linux            |


### Access Policies

The machines on the internal network are not exposed to the public Internet.

Only the Jump Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- Add whitelisted IP addresses
> - _Answer:_ Current public IP of my host computer through port 22.

Machines within the network can only be accessed by ssh into their corresponding private IP addresses.
- Which machine did you allow to access your ELK VM?
> - _Answer:_ The machine allowed access to my ELK Sever is the container found on the Jump Box. Once the container is started and attached, an ssh can be established to the VMs.

- What was its IP address?
> - _Answer:_ 20.228.188.232

A summary of the access policies in place can be found in the table below.

| Name              | Publicly Accessible | Allowed IP Addresses          |
|-------------------|---------------------|-------------------------------|
| Jump Box          | Yes                 | Public IP of Host // ssh 22   |
| Web 1             | No                  | 10.0.0.5 // ssh 22            |
| Web 2             | No                  | 10.0.0.7 // ssh 22            |
| Web 3             | No                  | 10.0.0.6 // ssh 22            |
| ELK Sever         | No                  | 10.1.0.4 // ssh 22            |
| Kibana Interface  | Yes \(restricted\)  | Public IP of ELK // port 5601 |

***
***
***

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- _TODO: What is the main advantage of automating configuration with Ansible?_

The playbook implements the following tasks:
- _TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
- ...
- ...

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)

### Target Machines and Beats
This ELK server is configured to monitor the following machines:
- _TODO: List the IP addresses of the machines you are monitoring_

We have installed the following Beats on these machines:
- _TODO: Specify which Beats you successfully installed_

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned:

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._

[Ansible]: Ansible/
