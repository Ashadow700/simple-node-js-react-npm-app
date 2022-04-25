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
                sh 'chmod 777 ./jenkins/scripts/myDeliver.sh'
                sh './jenkins/scripts/myDeliver.sh'
            }
        }
    }
}
