# Use the Aerospike official base image
FROM aerospike/aerospike-server:latest

# Expose Aerospike ports
EXPOSE 3000 3001 3002 3003

# Set up the Aerospike cluster configuration
COPY aerospike.conf /etc/aerospike/aerospike.conf

# Start the Aerospike cluster
CMD ["asd", "--foreground"]
