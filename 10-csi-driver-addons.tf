resource "aws_eks_addon" "csi_driver" {
  cluster_name             = aws_eks_cluster.demo1.name
  addon_name               = "aws-ebs-csi-driver"
  addon_version            = "v1.23.0-eksbuild.1" #you have to manually update version by knowing current version by below command
  service_account_role_arn = aws_iam_role.eks_ebs_csi_driver.arn
}


#aws eks describe-addon-versions --addon-name aws-ebs-csi-driver