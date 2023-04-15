pipeline {
  agent any
  tools {
    maven 'maven'
  }
  stages {
    stage('Build app') {
      steps {
        sh 'mvn clean install package'
      }
    }
    stage('Push Artifact to S3') {
      steps {
        sh 'aws s3 cp webapp/target/webapp.war s3://demo-863939'
      }
    }
  }
}
