pipeline {

    agent any

    stages {

        stage("Build") {
                steps {
                    echo 'Building.....'
                }
        }

        stage("Test") {
            steps {
                echo 'Testing.....'
            }
        }

        stage("Deploy") {
           input {
                message "select environment"
                ok "Doneeeeee"
                parameters {
                    choice(name: 'ENV', choices: ['dev','prod'.'test'], description: 'ggggggggggggggg')
                }
            }
            steps {
                echo "Deploying.... ${ENV} "
            }
        }

    }

}
