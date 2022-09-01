
variable "description" {
    description = "Description of the service for systemd"
    type = string
    default = ""
}


variable "systemd_after_stage" {
    description = "When to run our container. This usually does not need to change."
    type = string
    default = "network.target"
}

variable "user" {
    description = "What user to run as. You will need to run as root to use one of the lower ports."
    type = string
    default = "root"
}


variable "docker_compose_str" {
    description = "The entire docker compose file to write."
    type = string
}



variable "persistent_volume_size_gb" {
    description = "The size of the volume mounted"
    type = number
}

variable "persistent_volume_mount_path" {
    description = "Where on the filesystem to mount our persistent volume"
    type = string
    default = "/persistent"
}
