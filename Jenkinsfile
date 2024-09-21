pipeline {

    agent any

    tools {
        gradle "my-gradle.8"
    }

    stages {

        stage("Build jar file") {
                steps {
                    script {
                        echo "Building jar file....."
                        sh 'git clone https://github.com/spring-projects/spring-petclinic.git'
                        sh 'cd spring-petclinic'
                        sh './gradlew package -x test'
                        echo "jar file built"
                    }
                }
        }

        stage("build image") {
            steps {
                script {
                    echo 'Building Image.......'
                    sh 'docker build -t 3laaharrrr/petclinic:v2 .'
                    echo 'Image built'
                }
            }
        }

        stage("push image") {

            steps {
               script {
                    echo 'Pushing Image.......'

                    withCredentials([
                        usernamePassword(credentialsId: 'dockerhub', usernameVariable: USERNAME, passwordVariable: PASSWORD)
                     ]) {
                            sh 'echo $PASSWORD | docker login -u $USERNAME --password-stdin'
                            sh 'docker push 3laaharrrr/petclinic:v2'
                        }

                    echo 'Image pushed'

               }
            }
        }

    }

}
