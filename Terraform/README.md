# Terraform project
This is a [Terraform]project for managing AWS resources. 
It builds AWS infrastructure that contains:

* [VPC]
* 2 Public [Subnet]in the `VPC`
* [IGW]to enable `VPC` access to or from the Internet
* [Route Table]to control the route between`IGW`, `VPC` and 2`Subnet`
* [Security group]to control the traffic from and to the 2 `EC2 Instance`
* 2 [EC2 Instance] in the public `Subnet` with the HTTP(s) & SSH access
* [RDS] 

The backend of Terrform is deployed on S3 bucket

You can run "terraform apply --var-file=2_values.tfvars" to apply the default settings I made :)
