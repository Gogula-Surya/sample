# Use the official NGINX image
FROM nginx:alpine

# Remove the default NGINX static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML and other static files into the container
COPY . /usr/share/nginx/html

# Expose port 80 to the web
EXPOSE 80

# Start NGINX server
CMD ["nginx", "-g", "daemon off;"]
