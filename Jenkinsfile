pipeline {
  agent any
  stages {
    stage('copy file') {
      parallel {
        stage('copy file') {
          steps {
            sh '''
cd /root
scp deploy-nginx.sh vultr-106:/root'''
          }
        }
        stage('copy tomcat file') {
          steps {
            sh '''ansible vultr -m shell -a "yum install openssh-clients -y"
cd /winrar
scp apache-tomcat-8.5.40.tar.gz vultr-93:/root
'''
          }
        }
      }
    }
    stage('display ip ') {
      steps {
        sh 'ansible vultr -m shell -a "ip addr show"'
      }
    }
  }
}