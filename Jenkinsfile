pipeline {
    agent any
    stages {
        stage('checkout') {
            steps {	
		sh 'rm -rf hello-world-war'
                sh 'git clone https://github.com/madhu197985/hello-world-war.git'
            }
        }
	stage('Build') {
            steps {
		    sh 'mvn clean package'
            }
        }   
    }
}
