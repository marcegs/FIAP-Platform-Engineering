output "instances" {
  value = {
    for instance in aws_instance.web:
    instance.id => "http://${instance.public_dns}"
  }
}

output "elb_dns" {
  value = aws_elb.web.dns_name
}

output "security_group_id" {
  value = aws_security_group.allow_ssh.id
}
