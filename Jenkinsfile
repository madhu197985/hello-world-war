pipeline {
    agent {
			label 'slave1'
		}
     stages {
        stage('checkout') {
            steps {	
		sh 'rm -rf hello-world-war'
                sh 'git clone https://github.com/madhu197985/hello-world-war.git'
            }
        }
     }
	stage('Build') {
            steps {
		sh 'mvn clean package'
            }
  }
	stage('tomcat installation') {
            steps {
		sh 'sh tominst.sh'
            }
	stage('deploy') {		
            steps {
		echo "hi jenkins"
		sh 'sudo cp /home/ubuntu/workspace/tomcatinst/target/hello-world-war-2.0.0.war /var/lib/tomcat9/webapps'
        }
    }
}
}
