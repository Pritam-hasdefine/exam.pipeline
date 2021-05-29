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
 
                sh 'docker login -u pritamhit2016 -p pritam1234'   
               
            }
        }
        stage('image push') {
            steps {
            sh 'docker tag pritam pritamhit2016/exam.docker:apache'
            sh 'docker push pritamhit2016/exam.docker:apache'
            }
        }
    }
}
