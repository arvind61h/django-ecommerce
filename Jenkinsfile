pipeline{
    agent {label 'buildServer'}
    stages{
        stage('GIT-Clone'){
            steps{
                git 'https://github.com/arvind61h/django-ecommerce.git'
            }
        }
        stage('Create-DockerImage'){
            steps{
                sh 'docker image prune -f'
                sh 'docker container prune -f'
                sh 'docker volume prune -f'
                sh 'docker system prune -f'
                sh 'docker build -t 92840/ecommerce:web .'
            }
        }
        stage('DeployingApplication'){
            steps{
                sh 'docker-compose up -d'
            }
        }

    }
}