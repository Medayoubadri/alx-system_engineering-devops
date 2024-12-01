# 2-secured_and_monitored_web_infrastructure

## Infrastructure Explanation

### 1. Why are you adding each element?
- **Firewalls**: Protect servers by filtering traffic, allowing only legitimate requests and blocking potential threats like DDoS attacks.
- **SSL Certificate**: Encrypts data transmission between clients and servers, ensuring secure communication and user trust.
- **Monitoring Clients**: Collect and send performance metrics (CPU usage, memory, QPS, etc.) to a central monitoring service for analysis.

### 2. What are firewalls for?
- Firewalls filter incoming and outgoing traffic, blocking unauthorized access and preventing malicious attacks on the servers.

### 3. Why is the traffic served over HTTPS?
- HTTPS encrypts data in transit, protecting it from interception, eavesdropping, and man-in-the-middle attacks, ensuring secure communication.

### 4. What is monitoring used for?
- Monitoring tracks the system’s health and performance, providing alerts for anomalies, preventing downtime, and helping diagnose issues before they escalate.

### 5. How is the monitoring tool collecting data?
- Monitoring clients on each server gather metrics like CPU usage, memory, disk I/O, and network traffic. These metrics are then sent to a centralized dashboard for visualization and analysis.

### 6. How to monitor your web server QPS (Queries Per Second)?
- Configure the monitoring tool (e.g., Prometheus, Datadog) to collect Nginx logs and extract QPS data. Visualize it on a dashboard to detect traffic spikes and performance issues.

## Issues with the Infrastructure

### 1. Why is terminating SSL at the load balancer level an issue?
- Terminating SSL at the load balancer decrypts traffic there, meaning internal traffic between the load balancer and backend servers is unencrypted, exposing it to potential risks.

### 2. Why is having only one MySQL server capable of accepting writes an issue?
- If the Primary MySQL server fails, no write operations can be performed, creating a single point of failure and leading to data unavailability for new transactions.

### 3. Why might having servers with all the same components be a problem?
- **Resource Contention**: Database, web server, and application server on the same machine compete for resources, potentially degrading performance.
- **Maintenance Complexity**: Issues in one component (e.g., database) can impact the entire system, reducing overall reliability and making maintenance more complex.

## Screenshot Link:
[Secured and Monitored Web Infrastructure Diagram](https://imgur.com/2PttgKB)
