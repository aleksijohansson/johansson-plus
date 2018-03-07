provider "upcloud" {
    # You need to set UpCloud credentials in shell environment variable
    # using .bashrc, .zshrc or similar
    # export UPCLOUD_USERNAME="Username for Upcloud API user"
    # export UPCLOUD_PASSWORD="Password for Upcloud API user"
}

resource "upcloud_server" "johansson_plus" {

    # System hostname
    hostname = "johansson.plus"

    # Target datacenter
    zone = "fi-hel2"

    # Template name or UUID
    template = "CoreOS Stable 1068.8.0"

    # Number of vCPUs
    cpu = 1

    # Amount of memory in MB
    mem = 1024

    # OS root disk size
    os_disk_size = 25

    # Login details
    login {
        user = "aleksi"
        keys = [
            "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC6ycn3RQXU48uRlqGT85cxWuiKeW5nXgp1jlA6NqD8nlXBv/MFBy4gm9g+C1KlA2diF8XHOdRuhiiR6zmO2qOWTqTPxzQyuU3uOKqFHq7ZDRYum8MlCaJ6U2TEZcV36IrpQCyRQbu82GThXkJK8doNfFuwlJuFJuOk4cdXlAKLAIkLI4XiXE7XKE7yX5OMs4WHJPS0GH4Xe8uU/N1aKJ+u8Xr9A5JjScBI1sAnTO6oPbWaYzeGg56kkv2/y2UObMh6ULIXYvQ/deGE22mimsz2NcIAgi9A8wYSCAt741EIyWEF5Ftbxq+gNV22/oZSJuf6aMNft66aBQzE4EtpXu31"
        ]
    }
}
