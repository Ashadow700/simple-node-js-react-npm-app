pipeline {
    agent {
        docker {
            image 'node:lts-bullseye-slim' 
            args '-p 3000:3000' 
        }
    }
    stages {
        stage('Build') { 
            steps {
                sh 'echo my simple node and stuff'
                sh 'npm cache clean --force'
                sh 'npm install' 
            }
        }
    }
}
