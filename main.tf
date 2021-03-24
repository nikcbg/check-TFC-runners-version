resource "null_resource" "release" {
  triggers = {
    always_run = timestamp()
  }
  
  provisioner "local-exec" {
    command = "cat /etc/*release"
  }
  provisioner "local-exec" {
    command = "free -h"
  }
}

