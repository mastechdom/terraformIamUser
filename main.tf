provider "aws" {
  region = "ap-south-1"  # Update this to your desired AWS region

}



resource "aws_iam_user" "limited_user" {

  name = "limited-user"

}



resource "aws_iam_policy" "ec2_full_access" {

  name        = "ec2-full-access"

  description = "Full access to EC2 resources"

  

  policy = jsonencode({

    Version = "2012-10-17",

    Statement = [

      {

        Action   = "ec2:*",

        Effect   = "Allow",

        Resource = "*"

      }

    ]

  })

}



resource "aws_iam_policy" "s3_read_only_access" {

  name        = "s3-read-only-access"

  description = "Read-only access to S3 buckets"

  

  policy = jsonencode({

    Version = "2012-10-17",

    Statement = [

      {

        Action   = "s3:GetObject",

        Effect   = "Allow",

        Resource = "*"

      }

    ]

  })

}



resource "aws_iam_user_policy_attachment" "ec2_policy_attachment" {

  user       = aws_iam_user.limited_user.name

  policy_arn = aws_iam_policy.ec2_full_access.arn

}



resource "aws_iam_user_policy_attachment" "s3_policy_attachment" {

  user       = aws_iam_user.limited_user.name

  policy_arn = aws_iam_policy.s3_read_only_access.arn

}