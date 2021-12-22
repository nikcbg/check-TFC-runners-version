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
    #command = "python --version"
    command = "python3 -m install --upgrade python3.9;python3 -V" 
  }

}

