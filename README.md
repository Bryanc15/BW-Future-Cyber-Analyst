# My Cloud Network
The collection of Ansible and Linux Scripts were provided by The George Washington University Cyber Security program.
The scripts were used to configure the cloud servers paired with its docker container.
Completing the task at hand, I had four (4) servers running with DVWA containers along with a JumpBox Provisioner, and one (1) server running an Elk-Stack container.

## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![HW 12 Cloud Security (1)](https://user-images.githubusercontent.com/94076324/166616143-0f7f0aa7-9bf2-47c7-b637-149204c2ebd0.jpg)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the __yml___ file may be used to install only certain pieces of it, such as Filebeat and metric beat.

  - filebeat-config.yml
  - Filebeat-playbook.yml
  - INstall-elk.yml
  - Metricbeat.config.yml
  - Metricbeat-playbook.yml
  - pentest.yml

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
- Beats in Use
- Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available and reliable, in addition to restricting access to the network.
-What aspect of security do load balancers protect? 

The off-loading function of a load balancer defends an organization against distributed denial-of-service (DDoS) attacks. It does this by shifting attack traffic from the corporate server to a public cloud provider. Load balancing lets you evenly distribute network traffic to prevent failure caused by overloading a particular resource. This strategy improves the performance and availability of applications, websites, databases, and other computing resources. It also helps process user requests quickly and accurately


What is the advantage of a jump box?
A jump box is a secure computer that all admins first connect to before launching any administrative task or use as an origination point to connect to other servers or untrusted environments.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the data and system logs.

What does Filebeat watch for?
Filebeat monitors the log files or locations that you specify, collects log events, and forwards them either to Elasticsearch or Logstash for indexing

What does Metricbeat record?
Metricbeat takes the metrics and statistics that it collects and ships them to the output that you specify, such as Elasticsearch or Logstash. Metricbeat helps you monitor your servers by collecting metrics from the system and services running on the server, such as: Apache. HAProxy.


The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| **Name** | **Publicly Accessible** | **Allowed IP Address**     |
|----------|-------------------------|----------------------------|
| JumpBox  | Yes                     | 10.0.0.1 10.0.0.2          |
| Web-1    | NO                      | 10.0.0.4                   |
| Web-2    | NO                      | 10.0.0.4                   |
| Elk-VM   | NO                      | 10.2.0.4 and TCP with 5602 |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the JumpBox machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
 -20.222.102.154


Machines within the network can only be accessed by SSH from the JUmpbox.

Which machine did you allow to access your ELK VM? What was its IP address?_My Jumpbox VM i was able to acces my ELk VM. Its private IP was 10.0.0.4 and Public IP 20.222.102.154. Also was allowed to connect through TCp 5601 which allowed me to connect to Kibana.

A summary of the access policies in place can be found in the table below.

| **Name** | **Publicly Accessible** | **Allowed IP Address**     |
|----------|-------------------------|----------------------------|
| JumpBox  | Yes                     | 10.0.0.1 10.0.0.2          |
| Web-1    | NO                      | 10.0.0.4                   |
| Web-2    | NO                      | 10.0.0.4                   |
| Elk-VM   | NO                      | 10.1.0.4 and TCP with 5602 |

# Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...

What is the main advantage of automating configuration with Ansible?

In Ansible, the role is the primary mechanism for breaking a playbook into multiple files. This simplifies writing complex playbooks, and it makes them easier to reuse

The playbook implements the following tasks: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._

-Create a new vNet in a new region, within your resource group.

-Create a Peer Network Connection between your two vNets.

-Create a new VM. Deploy a new VM into the new vNet with it's own Security Group. This VM will host the ELK server.

-Download and configure a container. Download and configure the elk-docker container onto this new VM.

-Launch and expose the container. Launch the elk-docker container to start the ELK server.


Implement identity and access management. Configure your new Security group so you can connect to ELK via HTTP, and view it through the browse



The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![Screenshot (105)](https://user-images.githubusercontent.com/94076324/166616183-b613eedb-08d5-460a-ac3a-72d4160abd47.png)


### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- List the IP addresses of the machines you are monitoring

- Web 1/10.0.0.5
- Web 2/10.o.0.6

We have installed the following Beats on these machines:
Specify which Beats you successfully installed

- Filebeat and MetricBeat

These Beats allow us to collect the following information from each machine:
In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc.

-Filebeat allows monitors the log files or locations that you specify, collects log events, and forwards them either to Elasticsearch or Logstash for indexing
- Metricbeat it periodically collects metrics from the operating system and from services running on the server

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the Filebeat configuration file from your Ansible container to your WebVM's where you just installed Filebeat. Make sure it is copied to: /etc/filebeat/filebeat.yml

- Update the ansible playbook file to include the .deb file. Update the filebeat config file. Run the enable docker command. Run the filebeat-e command
- Run the playbook, and navigate to http://20.92.243.171:5601/app/kibana to check that the installation worked as expected.

















