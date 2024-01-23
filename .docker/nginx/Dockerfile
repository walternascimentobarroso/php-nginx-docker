# Image and version
FROM nginx:1.25.2-alpine

# Install dependencies
RUN apk --no-cache add openssl

# Create dir ssl/
RUN mkdir -p /etc/nginx/ssl

# Copy template.csr.conf
COPY certs/template.csr.conf /etc/nginx/ssl

# Generating the certificate's private key - localhost.key
RUN openssl genpkey -algorithm RSA -out /etc/nginx/ssl/localhost.key

# Generating the Certificate Signing Request - localhost.csr
RUN openssl req -new -key /etc/nginx/ssl/localhost.key -out /etc/nginx/ssl/localhost.csr -subj "/C=BR/ST=State/L=City/O=Organization/CN=localhost" -config /etc/nginx/ssl/template.csr.conf

# Generating the Self-Signed Certificate - localhost.crt
RUN openssl x509 -req -days 365 -in /etc/nginx/ssl/localhost.csr -signkey /etc/nginx/ssl/localhost.key -out  /etc/nginx/ssl/localhost.crt
