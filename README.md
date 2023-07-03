# README
# Ruby version
  ruby 3.2.0

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
  rails 7.0.4

# Configuration

  ## instalar o RVM e o rails
  - executar a chave abaixo
  gpg --keyserver keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

  \curl -sSL https://get.rvm.io | bash

  rvm install 3.2.0

  ## Instalar o Postgresql
    - sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
    - wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
    - sudo apt-get update
    - sudo apt-get -y install postgresql

    - sudo apt-get install libpq-dev

    #Acessar o postgres
    - sudo su postgres
    - psql

    # caso de erro psql: could not connect to server: No such file or directory Is the server running locally and accepting connections on Unix domain socket "/var/run/postgresql/.s.PGSQL.5432"?

    #format is pg_ctlcluster <version> <cluster> <action>
    - sudo pg_ctlcluster 14 main start

    #restart PostgreSQL service
    - sudo service postgresql restart

    #colocar o usuarios postgres como proprietário 
    - sudo chown postgres -R /var/lib/postgresql/14/main/

    #set user to group back with
    - sudo gpasswd -a postgres ssl-cert

    # Fixed ownership and mode
    - sudo chown root:ssl-cert  /etc/ssl/private/ssl-cert-snakeoil.key
    - sudo chmod 740 /etc/ssl/private/ssl-cert-snakeoil.key

    # now postgresql starts! (and install command doesn't fail anymore)
    - sudo service postgresql restart

    #Acessar o usuário postgres
    - sudo su postgres

    #Entrar no sql
    - psql

    #Alterar usuário postgres dentro do banco postgres 
    - ALTER USER postgres WITH PASSWORD 'postgres';
  ## Clonar projeto:
    - git clone -b master https://github.com/davidcacortez/sisbt.git
  ## Instalar npm e yarn
    - sudo apt-get update
    - curl -qL https://www.npmjs.com/install.sh | sh
    - npm i 9.7.2
    - npm i npm
    - sudo apt-get install yarn -y
    - sudo yarn install
  ## Executar o bundle
    - **Obs1:** execute as instalações das Gems
    - bundle

# Database creation
  rails db:create db:migrate db:seed

# Database initialization
  sudo service postgresql start

# Instalação NVM:
 - **Obs1:** caso não possua já instalado o nvm, realize a instalação abaixo, executando no terminal:
 - curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

 - **Obs2:** recarregue o seu bashrc:
 - source /home/$USER/.bashrc 

 - **Obs3:** após concluída a instalação do nvm, instale uma versão do nodejs:
 - nvm install 
 - sudo apt-get install nodejs

