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
    command = "python3 -V; pip3 --version;python3 -m pip install --upgrade pip" 
  }

}

