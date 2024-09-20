pipeline {

    agent any
    parameters {
        choice(name: 'ENV', choices: ['dev','prod','test'], description: '')
    }

    stages {

        stage("Build") {
                steps {
                    echo 'Building.....'
                    sh 'echo "hhhhhhh"'
                }
        }

        stage("Test") {
            steps {
                echo 'Testing.....'
                script {
                    sh 'echo "gggggg"'
                }
            }
        }

        stage("Deploy") {

            steps {
               echo "Deploying.... ${params.ENV} "
            }
        }

    }

}
