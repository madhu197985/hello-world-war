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
	stage('deploy') {
            steps {
		    sh 'sudo cp /var/lib/jenkins/workspace/multibranch_pipe1_developer/target/hello-world-war-1.0.0.war /var/lib/tomcat9/webapps'
            }
    }
}
}
