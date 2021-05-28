pipeline {
    agent any

    stages {
        stage('image check') {
            steps {
                sh "docker images"
            }
        }
        stage('image build') {
            steps {
                sh 'docker build -t pritam .'
                sh 'docker images'
            }
        }
        stage('docker hub login') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'docker-cred1', passwordVariable: 'password', usernameVariable: 'username')]) {
                sh 'docker login -u $username -p $password'   
                }
            }
        }
        stage('image push') {
            steps {
            sh 'docker tag pritam pritam9604/exam.docker:apache'
            sh 'docker push pritam9604/exam.docker:apache'
            }
        }
    }
}
