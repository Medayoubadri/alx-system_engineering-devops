# 3-scale_up_web_infrastructure

## Infrastructure Explanation

### 1. Why are you adding each element?
- **Additional Server**: Adds more capacity to handle increased traffic and further reduces the risk of downtime by increasing redundancy.
- **Additional Load Balancer (HAProxy Cluster)**: Creates a load balancer cluster to ensure high availability. If one load balancer fails, the other continues managing traffic, preventing a single point of failure.
- **Separation of Components**: Splitting the web server, application server, and database onto their own servers improves performance, scalability, and fault tolerance.

## Benefits of Splitting Components

### 1. **Web Server (Nginx)**:
- Dedicated to serving static files (e.g., HTML, CSS, JavaScript) and forwarding dynamic requests to the application server.
- Reduces the load on the application server, allowing it to focus on processing business logic.

### 2. **Application Server (Python, etc.)**:
- Dedicated to executing the business logic and handling dynamic requests.
- Improves scalability by isolating application processes from web and database workloads.

### 3. **Database Server (MySQL)**:
- Dedicated to handling all read and write operations for data storage.
- By isolating the database, it can be scaled independently and avoid competition for resources with other services.

## Advantages of Scaling Up
- **Increased Reliability**: Adding an extra load balancer ensures high availability even if one fails.
- **Better Performance**: Isolating services prevents resource contention, ensuring each component performs optimally.
- **Easier Scalability**: Components can be scaled independently based on their specific resource needs (e.g., adding more web servers to handle static content).

## Screenshot Link:
[Scale-Up Web Infrastructure Diagram](https://imgur.com/P1OgfKk)
