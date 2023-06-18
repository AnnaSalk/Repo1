pipeline {
    agent { label 'Agent01'
    }
    stages {
        stage('CheckDocker') {
            steps {
                script {
                   bat 'docker version'
                }
            }
        }    
        stage('ArtifactoryDownload') {
            steps {
                script {
                   rtDownload (
                        serverId: 'artifactory',    
                        spec: '''{
                        "files": [
                            {
                                "pattern": "generic-local/6-21/89690.zip",
                                "target": ".\\89690.zip"
                            }
                        ]
                    }'''
                    )
                }
                script {
                   rtDownload (
                        serverId: 'artifactory',    
                        spec: '''{
                        "files": [
                            {
                                "pattern": "generic-local/6-21/DatabaseSettings.xml",
                                "target": ".\\DatabaseSettings.xml"
                            }
                        ]
                    }'''
                    )
                }
            }
        }
            stage('checkfiles') {
                steps {
                script {
                   bat 'dir'
                }
            }
        }
        stage('BuildDockerImage'){
          steps{
            script{
              bat 'dir'
              //create dockerfile (should move to git)
              //build docker BuildDockerImage 
              //run container
              // push to artifactory
            }
          }
        }
         
    }
    post {
        always {
          echo 'always'
            //deleteDir() /* clean up our workspace */
        }
        success {
            echo 'I succeeded!'
        }
        failure {
            echo 'I failed :('
        }
    }
}
