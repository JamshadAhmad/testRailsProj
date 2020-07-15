# README

This README would normally document whatever steps are necessary to get the
application up and running.

* Ruby version: 2.6.6

* Rails version: 6.0.3.2

Steps to setup

1- Clone repository

`git clone git@github.com:JamshadAhmad/testRailsProj.git`

2- Setup database.yml file in (if database is already created) `config/`

otherwise, `rake db:create` to create a new database

3- Go into project directory  

`cd testRailsProj`

4- Install gems 

`bundle install`

5- Run migrations

`rails db:migrate`

6- Start rails built-in server by 

`rails s`

7- Test site by going to http://localhost:3000/