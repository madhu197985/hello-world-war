pipeline {
    agent none
     stages {
        stage('checkout') {
		agent {
			label 'slave1'
		}
            steps {	
		sh 'rm -rf hello-world-war'
                sh 'git clone https://github.com/madhu197985/hello-world-war.git'
            }
        }
	stage('Build') {
		agent {
			label 'slave1'
		}
            steps {
		sh 'mvn clean package'
            }
  }
	stage('deploy') {
		agent {
			label 'slave2'
		}
            steps {
		echo "hi jenkins"
		//sh 'sudo cp /var/lib/jenkins/workspace/multibranch_pipe1_develop/target/hello-world-war-2.0.0.war /var/lib/tomcat9/webapps'//
        }
    }
}
}
