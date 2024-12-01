
# 0x09. Web Infrastructure Design

This repository contains solutions to the Web Infrastructure Design project, part of the ALX System Engineering DevOps curriculum.

## Learning Objectives

By completing this project, you will be able to:
- Draw and explain a web stack diagram.
- Understand the role of key web infrastructure components (e.g., web servers, application servers, databases, firewalls).
- Explain the difference between Active-Active and Active-Passive setups.
- Identify and mitigate Single Points of Failure (SPOF).
- Ensure web infrastructure security using HTTPS, firewalls, and monitoring tools.

## Requirements
- A `README.md` file at the root of the project directory is mandatory.
- Diagrams must be created and uploaded for each task.
- Each solution must address specific questions about the web infrastructure design.
- Focus on the given requirements and avoid unnecessary details.

---

## Tasks

### 0. Simple Web Stack
Design a simple web infrastructure that hosts the website `www.foobar.com` using:
- 1 server (LAMP stack).
- Nginx as the web server.
- MySQL as the database.
- DNS configured with a `www` record pointing to `8.8.8.8`.

**Explanation:**
- **Server**: Hosts the web and application code.
- **DNS**: Maps domain to IP address.
- **Web Server**: Serves static and dynamic content.
- **Application Server**: Handles business logic.
- **Database**: Stores persistent data.

**Issues:**
- SPOF: If the server fails, the website is inaccessible.
- Downtime during maintenance.
- Limited scalability.

[Solution Diagram](https://github.com/Medayoubadri/alx-system_engineering-devops/blob/master/0x09-web_infrastructure_design/0-simple_web_stack)

---

### 1. Distributed Web Infrastructure
Design a web infrastructure with:
- 2 servers (Active-Active setup).
- 1 load balancer (HAProxy).
- Primary-Replica database.

**Explanation:**
- **Load Balancer**: Distributes traffic evenly using the Round-Robin algorithm.
- **Active-Active Setup**: Both servers handle traffic simultaneously.
- **Primary-Replica Database**: Ensures data redundancy.

**Issues:**
- SPOF: Load balancer and primary database.
- No security features like firewalls or HTTPS.
- No monitoring for server health.

[Solution Diagram](https://github.com/Medayoubadri/alx-system_engineering-devops/blob/master/0x09-web_infrastructure_design/1-distributed_web_infrastructure)

---

### 2. Secured and Monitored Web Infrastructure
Design a web infrastructure that:
- Has 3 servers, each with a firewall.
- Uses HTTPS with an SSL certificate.
- Includes monitoring clients (e.g., Sumologic).

**Explanation:**
- **Firewalls**: Protect against unauthorized access.
- **HTTPS**: Ensures encrypted communication.
- **Monitoring Tools**: Collect data to track server health.

**Issues:**
- SSL termination at the load balancer can be a security risk.
- Only one MySQL server for writes limits scalability.
- All servers having the same components may reduce performance efficiency.

[Solution Diagram](https://github.com/Medayoubadri/alx-system_engineering-devops/blob/master/0x09-web_infrastructure_design/2-secured_and_monitored_web_infrastructure)

---

### 3. Scale Up
Enhance the web infrastructure by:
- Adding a new server.
- Configuring the load balancer in a cluster.
- Splitting web, application, and database components onto separate servers.

**Explanation:**
- **Additional Server**: Improves redundancy and scalability.
- **Clustered Load Balancer**: Ensures high availability.
- **Separation of Components**: Optimizes performance by distributing roles.

[Solution Diagram](https://github.com/Medayoubadri/alx-system_engineering-devops/blob/master/0x09-web_infrastructure_design/3-scale_up)

---

## Resources
- [Network Basics](https://intranet.alxswe.com/rltoken/n3CdS3EA5l5psDDKbEhApA)
- [Web Server Basics](https://intranet.alxswe.com/rltoken/_GjAhwXE79iPaj7ZTDdqaQ)
- [Load Balancers](https://intranet.alxswe.com/rltoken/Pl3UoEfAO7K_jUKRLMmnAQ)
- [Monitoring](https://intranet.alxswe.com/rltoken/uxpx2YhXs10TFLIDg78chA)
