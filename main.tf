resource "null_resource" "release" {
  triggers = {
    static_trigger = "Terraform"
  }
  provisioner "local-exec" {
    command = "cat /etc/*release"
  }
  provisioner "local-exec" {
    command = "free -h"
  }
}
