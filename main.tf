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
  provisioner "local-exec" {
    command = "python3 -V" 
  }
  provisioner "local-exec" {
    command = "aws --version" 
  }
  
  provisioner "local-exec" {
    command = "az –version" 
  }

}

