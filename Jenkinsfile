pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t node:react-test .'
            }
        }
        stage('Deliver') {
            steps {
                sh './jenkins/scripts/myDeliver.sh'
            }
        }
    }
}
