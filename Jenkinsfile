node{
    checkout scm;
    def webDirectory = '/var/www/html'
    stage('Install nginx'){
        echo 'Check if Nginx is installed'
        def nginxInstalled = sh(script: 'which nginx', returnStatus: true) == 0
        if (!nginxInstalled){
            echo 'Nginx not found. Installing Nginx'
            sh '''
            sudo apt-get update
            sudo apt-get install -y nginx
            '''
    } else {
            echo 'nginx is installed.'
    }
   }
    stage('Deployment of Website'){
        sh '''
        sudo rm -rf ${webDirectory}/*
        sudo cp -r * ${webDirectory}/
        '''
        echo 'Website Deployed'
    }
    stage('Restart nginx'){
        sh 'sudo systemctl restart nginx'
    }    
}
