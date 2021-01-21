pipeline {
  environment {
    imagename = "jakubbialoskorski/jenkins-docker-node"
    registryCredential = 'dockerhub_id'
    dockerImage = ''
  }
  agent any
  stages {
    stage('Cloning GitHub repository') {
      steps {
        git([url: 'https://github.com/JakubBialoskorski/jenkins-docker-node.git', branch: 'master', credentialsId: 'github_readonly'])
      }
    }
    stage('Building docker image') {
      steps{
        script {
          dockerImage = docker.build imagename
        }
      }
    }
    stage('Pushing docker image') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
             dockerImage.push('latest')
          }
        }
      }
    }
    stage('Cleaning up docker image') {
      steps{
         sh "docker rmi -f $imagename:latest"
      }
    }
  }
}