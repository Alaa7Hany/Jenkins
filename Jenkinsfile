pipeline {

    agent any
    parameters {
        choice(name: 'ENV', choices: ['dev','prod'.'test'], description: 'ggggggggggggggg')
    }

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

            steps {
               // echo "Deploying.... ${parms.ENV} "
                echo 'hhhhhhhhhhhhhhhhhhhhhhhh'
            }
        }

    }

}
