# Use the Nginx base image
FROM nginx:latest

# Copy static website files to Nginx web root directory
COPY . /usr/share/nginx/html
