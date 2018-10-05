#Laravel 5.7 backend / Angular 6 Frontend 

## Basic install

- Clone this repository

        git clone https://github.com/farena/Laravel-5.7-backend-Angular-6-Frontend.git

- Steps to start
    - Inside the root directory run:
        
            composer install
            
    - Go to resources/frontend and run:
    
            npm install
            bash build.sh
            
    ### For Fast Development Server
    - Back to the root directory and run: (for fast dev server)
    
            php artisan serve
            ...
            ...
            Laravel development server started: <http://127.0.0.1:8000>

    ### For Apache Development Server
    - Create Apache Virtual Host
    
            cd /etc/apache2/sites-available/
            touch "myProject.conf"
            nano "myProject.conf"
                    
                ## Inside myProject.conf
                <VirtualHost *:80>
                    ServerName myproject.test
                
                    ServerAdmin webmaster@localhost
                    DocumentRoot /home/path/to/myproject/public
                
                    <Directory />
                        AllowOverride All
                        Require all granted
                    </Directory>
                
                    ErrorLog ${APACHE_LOG_DIR}/myproject_error.log
                    CustomLog ${APACHE_LOG_DIR}/myproject_access.log combined
                </VirtualHost>

    - Register Local Host Domain
    
            sudo -i
            echo -e "127.0.0.1 myproject.test" >> /etc/hosts
            exit
            
    - And restart apache
    
            sudo service apache2 restart