pipeline{
  agent any
  environment {
  PATH = "{$path}:${getTerraformPath()}"
}

stages{
  stage('terraform init'){
    steps{
      withAWS(credentials: 'cred-aws', region: 'eu-central-1') {
      sh 'terraform init'
      sh 'terraform plan'
      sh 'terraform apply -auto-approve'
    }
    }  
  }
  
  }
  }
  def getTerraformPath(){
  tfHome = tool name: 'terraform', type: 'terraform'
  return tfHome
  }
