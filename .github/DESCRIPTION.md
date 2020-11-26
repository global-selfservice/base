# Self Service base
In this repository we would maintain the aws resources created for each environment in a given AWS account

Gplan Outdoor has 4 environments in 2 AWS accounts as mentioned below
1. globalselfservicedev (435559816706)
    1. dev
    2. qa
2. globalselfserviceprod (191125840152)
    1. preprod
    2. prod

The aws resources like, VPC, subnet etc are maintained in this repository for every environment listed above.

Since we have a common backend s3 bucket for all the environment with in the AWS account we need to create terraform workspaces so that there is a distinction between envs with in the same s3 bucket.

Follow the command below to create new workspace. In the example below we have created a new workspace for "qa" environment. In case of production, make sure you are pointing to the correct backend via the backend overwrite config

```
$saml2aws login
Using IDP Account default to access ADFS https://adfs2.thisisglobal.com/adfs/ls/IdpInitiatedSignon.aspx
To use saved password just hit enter.
? Username ********@global.com
? Password ***********

Authenticating as ******@global.com ...
We've sent a text message with a verification code.
? Security Token [000000] ********
? Please choose the role Account: globalselfservicedev (435559816706) / ADFS-FullAccess
Selected role: arn:aws:iam::435559816706:role/ADFS-FullAccess
Requesting AWS credentials using SAML assertion
Logged in as: arn:aws:sts::435559816706:assumed-role/ADFS-FullAccess/******

Your new access key pair has been stored in the AWS configuration
Note that it will expire at 2020-10-08 17:42:19 +0100 BST
To use this credential, call the AWS CLI with the --profile option (e.g. aws --profile default ec2 describe-instances).

$terraform workspace new qa
Created and switched to workspace "qa"!

You're now on a new, empty workspace. Workspaces isolate their state,
so if you run "terraform plan" Terraform will not see any existing state
for this configuration.


# In case of production 

$terraform init -reconfigure -backend-config="vars/prod.backend.tfvars"
Initializing modules...

Initializing the backend...

Successfully configured the backend "s3"! Terraform will automatically
use this backend unless the backend configuration changes.

The currently selected workspace (qa) does not exist.
  This is expected behavior when the selected workspace did not have an
  existing non-empty state. Please enter a number to select a workspace:

  1. default

  Enter a value: 1


Initializing provider plugins...
- Using previously-installed hashicorp/null v2.1.2
<few more ....>

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.

$terraform workspace new prod
Created and switched to workspace "prod"!

You're now on a new, empty workspace. Workspaces isolate their state,
so if you run "terraform plan" Terraform will not see any existing state
for this configuration.
```
