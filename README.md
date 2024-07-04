# terraform-jenkins-eks
Deploying EKS Cluster using Terraform and Jenkins
# CICD-EKS-Code-with-Gauri

Update Version AWS CLI - Version Kubectl - Version EKS 

Fix Error

CircleCI message "error: exec plugin: invalid apiVersion "client.authentication.k8s.io/v1alpha1"


In my case, updating aws-cli + updating the ~/.kube/config helped.

Update aws-cli (following the documentation)
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install --update

Update the kube configuration
mv ~/.kube/config ~/.kube/config.bk
aws eks update-kubeconfig --region ${AWS_REGION}  --name ${EKS_CLUSTER_NAME}
 ---------------------

 We HAVE a fix here: https://github.com/aws/aws-cli/issues/6920#issuecomment-1119926885

Update the aws-cli (aws cli v1) to the version with the fix:

pip3 install awscli --upgrade --user

For aws cli v2 see this.
After that, don't forget to rewrite the kube-config with:

aws eks update-kubeconfig --name ${EKS_CLUSTER_NAME} --region ${REGION}

