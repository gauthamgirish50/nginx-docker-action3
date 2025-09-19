# Use the official NGINX image as the base image
FROM nginx:latest
 
# Copy custom configuration file to the container
#COPY nginx.conf /etc/nginx/nginx.conf
 
# Copy static website files to the container
COPY index.html /usr/share/nginx/index.html
 
# Expose port 80 for the web server
EXPOSE 80
 
# Start NGINX
CMD ["nginx", "-g", "daemon off;"]