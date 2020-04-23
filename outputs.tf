output "sg_id"{ value = aws_security_group.sg.id }

output "elastic_ip"{
 value = aws_eip.eip.public_ip
}
