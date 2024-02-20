# Total memory of master
$master_memory = 2560
# Count CPU cores of master
$master_cpu = 1
# Master Name
$master_name = "master"
# Node Name
$node_name = "node"
# Count CPU cores of nodes [equal node_count -> 1cpu = 1node]
$node_cpu = 2
# Choose name box OS for your VM's
$name_box = "bento/centos-7.3"
# Increment to have more nodes
$node_count = 0
# Total memory of nodes
$node_memory = 2560
# First address network VM's
$first_address = "192.16.35"
# First pod-network-cidr
$first_pod_address = "192.16"
# Example: 192.16.35.5 -> 192.16.35.6 and etc. [default ip_steper = 1]
$ip_first_end = 5
# IP Counter [Example: 192.16.35.5 -> 192.16.35.6 and etc.]
$ip_steper = 1
