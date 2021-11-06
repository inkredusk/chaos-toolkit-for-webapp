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
    stage('run server') {
      steps {
        sh 'python app.py'
      }   
    }
    stage('run chaos experiments') {
      steps {
        sh 'chaos --verbose run experiment.json'
      }   
    }
  }
}