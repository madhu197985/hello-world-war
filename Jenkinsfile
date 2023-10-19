pipeline {
    agent {
			label 'slave1'
		}
     stages {
        stage('checkout') {
		//agent {
			//label 'slave1'
		//}
            steps {	
		sh 'rm -rf hello-world-war'
                sh 'git clone https://github.com/madhu197985/hello-world-war.git'
            }
        }
	stage('Build') {
		//agent {
			//label 'slave2'
		//}
            steps {
		sh 'mvn clean package'
            }
  }
	stage('tomcat installation') {
		//agent {
			//label 'slave2'
		//}
            steps {
		sh 'sh tominst.sh'
            }
	stage('deploy') {
		//agent {
			//label 'slave2'
		//}
            steps {
		echo "hi jenkins"
		sh 'sudo cp /home/ubuntu/workspace/tomcatinst/target/hello-world-war-2.0.0.war /var/lib/tomcat9/webapps'
        }
    }
}
}
