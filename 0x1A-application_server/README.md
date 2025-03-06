# 0x1A. Application Server

This project involves setting up an application server to work alongside an existing Nginx web server. The application server will serve the AirBnB clone project.

## Tasks

### 0. Set up development with Python

- Clone AirBnB_clone_v2 on web-01
- Configure Flask app to serve content from /airbnb-onepage/ on port 5000

### 1. Set up production with Gunicorn

- Install Gunicorn
- Configure Gunicorn to serve the same Flask app on port 5000

### 2. Serve a page with Nginx

- Configure Nginx to proxy requests to /airbnb-onepage/ to the Gunicorn instance on port 5000

### 3. Add a route with query parameters

- Configure another Gunicorn instance on port 5001 to serve a different Flask app
- Configure Nginx to proxy requests to /airbnb-dynamic/number_odd_or_even/(int) to this instance

### 4. Set up API

- Configure Gunicorn to serve the AirBnB_clone_v3 API on port 5002
- Configure Nginx to proxy requests to /api/ to this instance

### 5. Serve the full AirBnB clone

- Configure Gunicorn to serve the AirBnB_clone_v4 web dynamic on port 5003
- Configure Nginx to serve static assets
- Configure Nginx to proxy requests to / to this instance

### 6. Deploy with systemd

- Create a systemd service file to start Gunicorn automatically

### 7. No service interruption

- Write a Bash script to reload Gunicorn gracefully
