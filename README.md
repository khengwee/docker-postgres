# Docker PostgreSQL Sample

This is a simple docker PostgreSQL sample to initialize table schemas and data creation.

## Build Package from Source

Clone the repository:

    $ git clone https://github.com/khengwee/docker-postgres.git

If this is your first time using GitHub, review http://help.github.com to learn the basics.

## Steps to create Docker image and run locally

a) Create Docker image:

    $ cd docker-postgres
    $ docker build --tag khengwee/docker-postgres:1.0 .
    
b) Run Docker:

    $ docker run -d -p 5432:5432 --name docker-postgres  khengwee/docker-postgres:1.0
    
c) Validate Docker is running correctly

    $ docker ps
    $ docker exec -it docker-postgres psql -U docker docker
    _________________________________________________________
    psql (9.6.15)
    Type "help" for help.
    
    docker=# select * from account;
     account_num |  account_type   | account_status
    -------------+-----------------+----------------
     10001       | Savings Account | Active
     10002       | Current Account | Dormant
    (2 rows)
    
    docker=#
    __________________________________________________________
