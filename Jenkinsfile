pipeline {
  agent { docker { image 'python:3.7.12-slim-buster' } }
  stages {
    stage('Initialize') {
      def dockerHome = tool 'docker'
      env.PATH = "${dockerHome}/bin:${env.PATH}"
    }
    stage('Build Docker') {
      steps {
         // build the docker image from the source code using the BUILD_ID parameter in image name
         sh "docker build -t chaos-toolkit-for-webapp ."
      }
    }
    stage("run docker container") {
      steps {
        sh "docker run -p 5002:5002 --name chaos-toolkit-for-webapp -d chaos-toolkit-for-webapp"
      }
    }
    stage('run chaos experiments') {
      steps {
        sh 'chaos --verbose run experiment.json'
      }   
    }
  }
}