terraform{
    required_providers{
        aws={
            source="hashicorp/aws"
        }
    }
}
provider "aws"{
    region="ap-south-1"
    access_key="AKIA4YRWXJH4KSQFBZZ3"
    secret_key="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"

    
}
resource "aws_instance" "ec2_instance"{
    ami="ami-0a35f6b01c30080e1"
    instance_type="t2.micro"
}
output "public_ip"{
    value=aws_instance.ec2_instance.public_ip
}