pipeline {
  agent any
    stages {
        stage('Getting project from Git') {
             steps{
                script{
                    checkout([$class: 'GitSCM', branches: [[name: '*/master']],
                        userRemoteConfigs: [[
                            url: 'https://github.com/DhiaOthmanii/test.git']]])
                }
            }
        }
        stage('Cleaning the project') {
             steps{
                script{
                    sh "npm ci"
                }
            }
        }
        stage('Artifact Construction') {
             steps{
                script{
                    sh "ng build"
                }
            }
        }


        stage('Build Docker Image') {
             steps{
                script{
                    sh "docker build -t dhiaothmani/angulartesting:latest ."
                }
            }
        }
 

       }
      }
