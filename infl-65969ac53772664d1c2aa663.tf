resource "aws_iam_instance_profile" "operation-workspace-terraform-b12" {
  name = "operation-workspace-terraform"
  role = "operation-workspace-terraform"
}


resource "aws_iam_role" "operation-workspace-terraform-a79" {
  assume_role_policy  = jsonencode({
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::604474584231:root"
      },
      "Action": "sts:AssumeRole"
    }
  ]
})
  description         = "Allows EC2 instances to call AWS services on your behalf."
  managed_policy_arns = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  name                = "operation-workspace-terraform"
}

