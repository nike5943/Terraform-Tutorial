provider "aws"{
     region = "ap-south-1"
}
resource "aws_instance""server1"{
   count = "1"
   ami = "ami-074251216af698218"
   instance_type = "t2.micro"
   key_name = "devops_ec2_jenkins"
   tags={
    Name = "serverec2"
    Env = "dev"
}
}
