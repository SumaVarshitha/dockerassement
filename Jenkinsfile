pipeline { 

    environment { 

        registry = "sreekar23/sreekar" 

        registryCredential = 'dockerhub_id' 

        dockerImage = '' 

    }

    agent any 

    stages { 

        stage('Build image') { 

            steps { 

                script { 

                    dockerImage = docker.build registry + ":$BUILD_NUMBER" 

                }

            } 

        }

        stage('Deploy image') { 

            steps { 

                script { 

                    docker.withRegistry( '', registryCredential ) { 

                        dockerImage.push() 

                    }

                } 

            }

        }
        
        stage('Cleaning up') { 

            steps { 

                sh "docker rmi $registry:$BUILD_NUMBER" 

            }

        } 
    }
}
