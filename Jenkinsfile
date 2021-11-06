pipeline {
  agent { docker { image 'python:3.7.12-slim-buster' } }

  environment {
     PATH = "$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/Docker.app/Contents/Resources/bin"
  }

  stages {
    stage("Check environment") {
        steps {
            echo "PATH is: $PATH"
            sh "/usr/local/bin/docker --version"
        }
    }
    stage('Build Docker') {
      steps {
         // build the docker image from the source code using the BUILD_ID parameter in image name
         sh "/usr/local/bin/docker build -t chaos-toolkit-for-webapp ."
      }
    }
    stage("run docker container") {
      steps {
        sh "/usr/local/bin/docker run -p 5002:5002 --name chaos-toolkit-for-webapp -d chaos-toolkit-for-webapp"
      }
    }
    stage('run chaos experiments') {
      steps {
        sh 'chaos --verbose run experiment.json'
      }   
    }
  }
}