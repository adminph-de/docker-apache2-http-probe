pipeline {
  environment {
        registry = "patrickha/apache-http-probe"
        registryCredential = 'patrickha'
        dockerImage = ''
  }
  agent any
  stages {
    stage('Building the docker image') {
      steps {
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      } 
    }
    stage('Deploying the docker image') {
      steps {
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        } 
      }
    } 
    stage('Cleaning up') { 
      steps { 
        sh "docker rmi $registry:$BUILD_NUMBER"
      }
    } 
  }
}
