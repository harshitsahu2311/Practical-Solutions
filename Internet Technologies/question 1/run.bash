ipconfig
# IP address and subnet mask values
IP_ADDRESS="192.168.1.10"
SUBNET_MASK="255.255.255.0"

# Use awk to perform bitwise AND operation between IP and subnet mask
NETWORK_ADDRESS=$(echo $IP_ADDRESS $SUBNET_MASK | awk -F'.' '{printf "%d.%d.%d.%d\n", $1 & $5, $2 & $6, $3 & $7, $4 & $8}')

echo "Network Address: $NETWORK_ADDRESS"
# Subnet mask in CIDR notation (/24)
SUBNET_MASK_CIDR="/24"

# Calculate maximum number of systems
MAX_SYSTEMS=$((2 ** (32 - ${SUBNET_MASK_CIDR#*/}) - 2))

echo "Maximum Number of Systems: $MAX_SYSTEMS"
# Using the previous IP and subnet mask
NETWORK_PREFIX=$(echo $NETWORK_ADDRESS | cut -d'.' -f1-3)

echo "Usable IP Range: ${NETWORK_PREFIX}.1 to ${NETWORK_PREFIX}.254"
echo "Network Address: $NETWORK_ADDRESS"
echo "Broadcast Address: $(echo $NETWORK_PREFIX | awk -F'.' '{print $1"."$2"."$3".255"}')"
