# Use the official NGINX base image with Alpine Linux
FROM nginx:alpine

# Copy the custom nginx.conf
COPY nginx.conf /etc/nginx/nginx.conf

# Copy config files
RUN mkdir -p /etc/nginx/conf.d && chown nginx:nginx /etc/nginx/conf.d

# Create SSL directory
RUN mkdir -p /etc/nginx/ssl && chown nginx:nginx /etc/nginx/ssl

# Create WWW directory
RUN mkdir -p /var/www/files && chown nginx:nginx /var/www/files

# Expose the container ports
EXPOSE 443
EXPOSE 80