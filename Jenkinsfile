pipeline {
  agent any
  stages {
    stage('copy file') {
      steps {
        sh '''#!/bin/bash
cd /root
scp deploy-nginx.sh vultr-93:/root'''
      }
    }
    stage('display ip ') {
      steps {
        sh 'ansible vultr -m shell -a "ip addr show"'
      }
    }
  }
}