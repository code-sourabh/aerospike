# Use the official Aerospike server image as the base image
FROM aerospike/aerospike-server:latest

# Copy your aerospike.conf file to a temporary location in the container
COPY aerospike.conf /tmp/aerospike.conf

# Create a custom entrypoint script
COPY custom_entrypoint.sh /usr/local/bin/custom_entrypoint.sh
RUN chmod +x /usr/local/bin/custom_entrypoint.sh

# Expose Aerospike ports (adjust these according to your aerospike.conf)
EXPOSE 3000 3001 3002 3003

# Use the custom entrypoint script to copy your aerospike.conf and then run the original entrypoint
ENTRYPOINT ["/usr/local/bin/custom_entrypoint.sh"]


