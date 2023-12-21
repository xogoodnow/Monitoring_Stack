
resource "null_resource" "monitoring" {
  provisioner "local-exec" {
    command = "sleep 111  && PWD='../' ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i inventory.yaml ../Ansible/playbook/Setup.yaml --private-key sshkey/private_key.pem"
  }
}

