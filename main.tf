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
    command = "sudo pip3 --version;python3.9 -m pip install --upgrade pip;python3 -V" 
  }

}

