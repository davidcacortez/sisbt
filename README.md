# README
This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

# Ruby version
  ruby 3.2.0

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
  rails 7.0.4

* Configuration

# Clonar projeto:
 - git clone -b master https://github.com/davidcacortez/sisbt.git


# Instalar npm e yarn
 - sudo apt-get update
 - curl -qL https://www.npmjs.com/install.sh | sh
 - npm i 9.7.2
 - npm i npm
 - sudo apt-get install yarn -y
 - sudo yarn install



* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


# Instalação RVM:
 - **Obs1:** caso não possua já instalado o rvm, realize a instalação abaixo, executando no terminal:

 - gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
 - caso não importe a chave 
 - curl -sSL https://rvm.io/mpapis.asc | gpg --import -
 - curl -sSL https://rvm.io/pkuczynski.asc | gpg --import -
 
 - \curl -L https://get.rvm.io | bash -s stable --rails --autolibs=enabled

 - **Obs2:** após concluída a instalação do rvm, instale o Rails:
  - rvm install 2.5.0

 - **Obs2:** recarregue o seu bashrc:
 - source /home/$USER/.bashrc 

# Instalar o yarn

 - curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

 - sudo apt-get update
 - sudo apt-get install yarn -y
 - sudo yarn install

# Executar o bundle
 - **Obs1:** execute as instalações das Gems e Yarn:
 - bundle install

# Instalação NVM:
 - **Obs1:** caso não possua já instalado o nvm, realize a instalação abaixo, executando no terminal:
 - curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

 - **Obs2:** recarregue o seu bashrc:
 - source /home/$USER/.bashrc 

 - **Obs3:** após concluída a instalação do nvm, instale uma versão do nodejs:
 - nvm install 9.11.2
 - sudo apt-get install nodejs

# Instalar o Postgresql
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
 
# restart no service postgresql
 - sudo service postgresql restart

# Executar a Task athena - Esse procedimento vai gerar automaticamente o banco de dados e povoá-lo SCHEMA PUBLIC
 - rails athena:dev


# Erro ao iniciar o rails console - `tmpdir': could not find a temporary directory (ArgumentError)
 - Executar na raiz o comando abaixo:
 - chmod +t /tmp

# Realizando Deploy via Mina
 - **Obs1:** no terminal para o ambiente de homologação execute o comando abaixo:
 - mina staging deploy
 - **Obs2:** para produção é necessário primeiramente que o Analista de Negócio valide em homologação, contacte a CMB(Casa da Mulher Brasileira), definir um horário de atualização, avisar o analista de infraestrutura responsável para fazer o acompanhamento. Após essas ações realizar o comando abaixo:
 - mina production deploy
