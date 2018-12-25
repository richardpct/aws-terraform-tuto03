# Purpose
This example takes up my second tutorial
[https://github.com/richardpct/aws-terraform-tuto02](https://github.com/richardpct/aws-terraform-tuto02)
by adding improvements:

* Splitting environment: Dev, Staging and Prod
* Using different ubuntu ami according to environment
* Using user-data to automate apache2 installation

# Requirement
* You must have an AWS account, if you don't have yet, you can subscribe to the free tier.
* You must install terraform

# Usage
## Exporting the required variables in your terminal:
    $ export TF_VAR_region="eu-west-3"
    $ export TF_VAR_bucket="mybucket-terraform-state"
    $ export TF_VAR_dev_network_key="terraform/dev/network/terraform.tfstate"
    $ export TF_VAR_dev_webserver_key="terraform/dev/webserver/terraform.tfstate"
    $ export TF_VAR_staging_network_key="terraform/staging/network/terraform.tfstate"
    $ export TF_VAR_staging_webserver_key="terraform/staging/webserver/terraform.tfstate"
    $ export TF_VAR_ssh_public_key="ssh-rsa ..."

## Creating the S3 backend to store the terraform state
    $ cd environments/00-bucket
    $ terraform init
    $ terraform apply

## Creating the VPC
    $ cd ../dev/01-network
    $ ./terraform_init.sh (execute this command once)
    $ terraform apply

## Creating the webserver
    $ cd ../02-webserver
    $ ./terraform_init.sh (execute this command once)
    $ terraform apply

## Testing your page
Open your web browser with the IP address of your webserver that is displayed previously

## Creating the staging environment
Repeat the same steps as previously by using the staging directory instead the dev directory

## Destroying all resources you have just created
Choose your environment by entering in dev or staging directory (or both)

    $ cd ../02-webserver
    $ terraform destroy
    $ cd ../01-network
    $ terraform destroy
