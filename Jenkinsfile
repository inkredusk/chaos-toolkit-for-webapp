pipeline {
  agent { docker { image 'python:3.7.2' } }
  stages {
    stage('build') {
      steps {
        sh 'pip install -r requirements.txt'
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