pipeline {
    agent {
        docker {
            image 'node:latest' 
            args '-p 3005:3005 -u root:root' 
        }
    }
    stages {
        stage('Build') { 
            steps {
                sh 'echo my simple node and stuff'
                sh 'npm install' 
            }
        }
        stage('Test') {
            steps {
                sh 'echo at test'
                sh './jenkins/scripts/test.sh'
            }
        }
        stage('Deliver') { 
            steps {
                sh './jenkins/scripts/deliver.sh' 
                input message: 'Finished using the web site? (Click "Proceed" to continue)' 
                sh './jenkins/scripts/kill.sh' 
            }
        }
    }
}
