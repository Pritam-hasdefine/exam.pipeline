pipeline {
   agent any
stages {
   stage('dockerhub login'){
        steps{
         // withCredentials([usernamePassword(credentialsId: 'dockerhubID', passwordVariable: 'pass', usernameVariable: 'user')]) {
                sh 'docker login -u pritam9604 -p pritam@1234'
             }
        }
  // }
   stage('image pull'){
        steps{
                sh 'docker pull nginx'
             }
        }
   stage('image check'){
        steps{
                sh 'docker images'
             }
        }
   stage('image push'){
        steps{
                 //give a tag to your pulled image          
               sh 'docker tag nginx pritamdas/test:pritam'
              //push the newly tagged image to your repo
               sh 'docker push pritamdas/test:pritam'
             }
          }
      }
   }
