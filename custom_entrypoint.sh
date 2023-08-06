#!/bin/bash

# Copy your custom aerospike.conf to the appropriate location
cp /tmp/aerospike.conf /etc/aerospike/aerospike.conf

# Execute the original Aerospike entrypoint script
exec /entrypoint.sh "$@"


#  docker run -itd  -v "$(pwd)/node1:/etc/aerospike/" --name node1 -p 3000:3000 -p 3001:3001 -p 3002:3002 -p 3003:3003 aerospike/aerospike-server

#  docker run -itd  -v "$(pwd)/node2:/etc/aerospike/" --name node2 -p 3004:3000 -p 3005:3001 -p 3006:3002 -p 3007:3003 aerospike/aerospike-server

#  docker run -itd  -v "$(pwd)/node3:/etc/aerospike/" --name node3 -p 3008:3000 -p 3009:3001 -p 30010:3002 -p 30011:3003 aerospike/aerospike-server

