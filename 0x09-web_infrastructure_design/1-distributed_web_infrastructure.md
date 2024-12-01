# 1-distributed_web_infrastructure

## Infrastructure Explanation

### 1. Why are you adding each element?
- **Load Balancer**: Distributes traffic between servers and prevents one server from becoming overwhelmed.
- **Second Server**: Adds redundancy to prevent downtime if one server fails.
- **Primary-Replica Database**: Improves performance and ensures data redundancy.

### 2. What distribution algorithm does your load balancer use, and how does it work?
- **Algorithm**: Round-Robin.
- **How it Works**: Requests are distributed evenly across servers in a circular manner.

### 3. Is your load balancer enabling an Active-Active or Active-Passive setup? Explain the difference.
- **Setup**: Active-Active.
- **Difference**:
  - Active-Active: Both servers handle traffic simultaneously.
  - Active-Passive: One server is active, and the other is on standby.

### 4. How does a Primary-Replica database cluster work?
- The **Primary database** handles writes and syncs data to the **Replica**.
- The **Replica database** handles reads and provides redundancy.

### 5. What is the difference between the Primary and Replica nodes in regard to the application?
- **Primary Node**: Handles all write operations and ensures the latest data.
- **Replica Node**: Handles read operations and reduces the load on the Primary.

## Issues with the Infrastructure

### 1. Single Points of Failure (SPOF):
- Load Balancer: If it fails, the system is inaccessible.
- Primary Database: If it fails, no writes can occur.

### 2. Security Issues:
- No Firewall: The system is vulnerable to attacks.
- No HTTPS: Communication is insecure and susceptible to interception.

### 3. No Monitoring:
- No tools to track server health, traffic, or performance.

## Screenshot Link:
[Distributed Web Infrastructure Diagram](https://imgur.com/Z52CEyE)
