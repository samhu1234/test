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
        sh 'ansible k8s -m shell -a "ip addr show"'
      }
    }
  }
}