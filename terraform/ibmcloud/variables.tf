##### SoftLayer Access Credentials ######
variable "ibm_sl_username" { default = "" }
variable "ibm_sl_api_key" { default = "" }

variable "key_name" {
  description = "Name or reference of SSH key to provision softlayer instances with"
  default = "icp-key"
}

variable "key_file" {
  description = "Path to private key on for above public key"
  default = "/home/username/id_rsa"
}

##### Common VM specifications ######
variable "datacenter" { default = "dal10" }
variable "domain" { default = "icp.demo" }
variable "public_vlan_id" { default = ""}
variable "private_vlan_id" { default = ""}

##### ICP settings #####
variable "icp_version" { default = "ibmcom/icp-inception:3.1.1" }

# Name of the ICP installation, will be used as basename for VMs
variable "instance_name" { default = "myicp" }

# Password to use for default admin user
variable "default_admin_password" { default = "admin" }

##### ICP Instance details ######
variable "master" {
  type = "map"
  default = {
    nodes       = "1"
    cpu_cores   = "8"
    root_size   = "100" // GB
    disk_size   = "400" // GB
    local_disk  = false
    memory      = "16384"
    network_speed= "1000"
    private_network_only=false
    hourly_billing=true
  }

}
variable "management" {
  type = "map"
  default = {
    nodes       = "1"
    cpu_cores   = "8"
    root_size   = "100" // GB
    disk_size   = "200" // GB
    local_disk  = false
    memory      = "16384"
    network_speed= "1000"
    private_network_only=false
    hourly_billing=true
  }

}
variable "proxy" {
  type = "map"
  default = {
    nodes       = "1"
    cpu_cores   = "2"
    root_size   = "100" // GB
    disk_size   = "100" // GB
    local_disk  = true
    memory      = "4096"
    network_speed= "1000"
    private_network_only=false
    hourly_billing=true
  }

}
variable "worker" {
  type = "map"
  default = {
    nodes       = "2"
    cpu_cores   = "2"
    root_size   = "100" // GB
    disk_size   = "100" // GB
    local_disk  = true
    memory      = "8192"
    network_speed= "1000"
    private_network_only=false
    hourly_billing=true
  }

}
