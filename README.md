# Terraform script to create an IAM user with the limited access like EC2 full access and S3 read only access.

This repository contains the necessary files and instructions for deploying an EC2 machine using Terraform Script.

## Prerequisite:

- Install terraform [video](https://www.youtube.com/watch?v=Cn6xYf0QJME&t=8s)
- Setup your AWS account [video](https://www.youtube.com/watch?v=XhW17g73fvY&t=357s)


## Steps to run this code


Step-by-step user guide [video](https://drive.google.com/file/d/1wWTR1P95VEQt2UlxRsg0qW5tU9r9Lo6g/view?usp=drive_link).

1. Clone this repository to your local machine:

```
git clone https://github.com/madgicaltechdom/nowigence.git
```

2. Navigate to the terraformIamUser directory.

```
cd terraformIamUser
```



3. Make changes in the rest of the variables according to your need in the main.tf file.

4. Also, have a look at the main.tf file and make changes in the "aws_security_group" resource according to your need.

5. Run `terraform init` to initialize the Terraform project.

6. Run `terraform plan` to see the changes that Terraform will make.

7. Run `terraform apply` to create the Ubuntu machine.

```
ssh -i <private key path> user_name@public_ip
```

## Clean up

To delete the iam user that Terraform created, run `terraform destroy`.
