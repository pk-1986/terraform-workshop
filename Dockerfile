# Use the official Nginx base image
FROM nginx:latest

# Copy custom configuration file (if needed)
# Uncomment and replace 'nginx.conf' with your own configuration file if required
# COPY nginx.conf /etc/nginx/nginx.conf

# Copy website files to the default Nginx directory
COPY ./html /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
