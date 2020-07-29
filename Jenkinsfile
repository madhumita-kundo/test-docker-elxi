pipeline {
   agent any
	stages {
		stage('Git Checkout'){
			steps {
				git 'https://github.com/apache/couchdb.git'
				}
		}
	
		stage('docker build'){
			steps {
				sh 'docker build -t elixir:${BUILD_NUMBER} .'
				}
		}
    stage('docker run'){
    steps{
         script {
            docker.inside() {
            sh "pwd"
          }
        }
     }
     }
	}
