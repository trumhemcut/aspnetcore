pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
    }
    
  }
  stages {
    stage('Build') {
      steps {
        sh '''cd src
dotnet restore
dotnet build
dotnet publish -c Release -o ./artifacts'''
      }
    }
    stage('Unit Test') {
      steps {
        parallel(
          "Unit Test": {
            sh 'cd test && dotnet restore && dotnet test --logger "trx;LogFileName=abc.trx"'
            
          },
          "Integration Test": {
            sh 'echo \'Hello this is integration test\''
            
          }
        )
      }
    }
    stage('Staging') {
      steps {
        sh 'cd src && dotnet restore && dotnet run'
      }
    }
    stage('Notify Gitlab') {
      steps {
        gitlabCommitStatus(name: 'build') {
          sh 'echo \'Hello\''
        }
        
      }
    }
  }
}