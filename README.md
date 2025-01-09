# Boilerplate mod_perl with mysql in Docker
## SetUp MySQL
* go to ./mysql
* edit docker-compose.yaml and fill in User as well as connection-string and password for DB
* `docker compose up [-d]` - starts building
* navigate browser to http://127.0.0.1:8080/cgi-bin/dbtest.pl

## SetUp Oracle
* Go to ./oracle
* edit docker-compose.yaml and fill in User as well as connection-string and password for DB.
* Take special care of connection-string. it is without tnsnames.ora!
* `docker compose up [-d]` - starts building
* navigate browser to http://127.0.0.1:8080/cgi-bin/dbtest.pl


absolute minimalistic setup
