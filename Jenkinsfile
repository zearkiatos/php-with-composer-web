pipeline {
  agent any
  options {
    timeout(time: 2, unit: 'MINUTES')
  }

  environment {
    ARTIFACT_ID = "caprilespe/php-with-composer-web:${env.BUILD_NUMBER}"
  }

  stages {
    stage('Build') {
      steps {
        script {
          dockerImage = docker.build "${env.ARTIFACT_ID}"
        }
      }
    }
    stage('Publish') {
    //   when {
    //     anyOf { branch 'master' } 
    //   }
      steps {
        script {
          docker.withRegistry("", "DockerHubCredentials") {
            dockerImage.push()
          }
        }
      }
    }
    stage('RUN REMOTE') {
      steps {
          build wait: false, job: 'parameterized', parameters: [string(name: 'ROOT_ID', value: '$BUILD_ID')]
      }
    }
  }
}
