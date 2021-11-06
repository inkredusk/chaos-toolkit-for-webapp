pipeline {
  agent { docker { image 'python:3.7.12-slim-buster' } }
  stages {
    stage('build') {
      steps {
         withEnv(["HOME=${env.WORKSPACE}"]) {
           sh 'pip install -r requirements.txt'
         }
      }
    }
  }
}