node{
  stage('SCM Checkout'){
    git 'https://github.com/KamalNaidu/demo'
  }
  stage('Compile-Package'){
    // get maven home path
    def mvnHome = tool name: 'maven-3', type: 'maven'
    
    sh "${mvnHome}/bin/mvn package"
  }
  stage('Build Dcker Image'){
        sh 'docker build  -t kamal/my-app:1.0'
  }
}
}
