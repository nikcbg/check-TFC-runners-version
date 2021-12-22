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
   # command = "sudo apt-get update python3" 
    command = "python --version"
  }
  
  
  
  
  
  
}

