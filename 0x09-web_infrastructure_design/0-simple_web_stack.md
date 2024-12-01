# 0-simple_web_stack

## Infrastructure Explanation

### 1. **What is a server?**
A server is a powerful computer or software that provides services to other computers (clients) over a network. In this case, the server hosts:
- A **web server** for handling HTTP/HTTPS requests.
- An **application server** for processing application logic.
- A **database** for storing and retrieving data.

### 2. **What is the role of the domain name?**
A domain name, such as `www.foobar.com`, is a human-readable address that simplifies access to a server. It is mapped to the server's IP address by the **DNS** (Domain Name System), allowing users to access the website without remembering numerical IP addresses.

### 3. **What type of DNS record is `www` in `www.foobar.com`?**
The `www` in `www.foobar.com` is typically an **A record** (Address Record). This maps the domain name `www.foobar.com` to an IP address (e.g., `8.8.8.8`) for the server hosting the website.

### 4. **What is the role of the web server?**
The web server (e.g., **Nginx**):
- Handles **HTTP/HTTPS requests** from the user's browser.
- Serves **static content** (e.g., HTML, CSS, JavaScript files, images).
- Passes dynamic requests to the application server for further processing.

### 5. **What is the role of the application server?**
The application server (e.g., **Python server**):
- Processes the **business logic** of the website.
- Generates dynamic content (e.g., user-specific pages) based on the user’s request.
- Interfaces with the database to retrieve or store data as needed.

### 6. **What is the role of the database?**
The database (e.g., **MySQL**) is used to:
- Store persistent data (e.g., user information, website content, transaction records).
- Allow the application server to query, retrieve, and update data.

### 7. **What is the server using to communicate with the computer of the user requesting the website?**
The server communicates with the user's computer using the **HTTP/HTTPS protocol**, which operates over the internet. The response includes the requested web page, assets, or error messages.

---

## Infrastructure Weaknesses

### 1. **Single Point of Failure (SPOF):**
The entire stack is hosted on a single server. If this server fails, the entire system will be unavailable. This is a critical issue as there is no redundancy or backup.

### 2. **Downtime during maintenance:**
When the server requires maintenance (e.g., deploying new code or restarting the web server), the website will be inaccessible. This impacts availability for users.

### 3. **Scaling challenges:**
The server cannot handle a significant increase in traffic because:
- All components (web server, app server, and database) share the same hardware resources.
- Scaling requires moving to a more complex multi-server architecture, which this setup does not currently support.

---

## Screenshot Link:
[Simple Web Stack Diagram](https://imgur.com/Z6ko9FW)
