# Elastic Beanstalk

## VM Walkthrough - ExamPro
```bash
ruby -v
gem install rails
bundle install

cd eb/basic
rails new --help
rails new example -A -J -T -d postgresql
```
Create `basic/docker-compose.yml`
Update `example/config/database.yml`
```bash
bundle exec rails s -b 0.0.0.0
# bind on 0.0.0.0 so we can access local db
```
Update `example/config/environments/development.rb`
### Make migrations and create model
```bash
rails generate migration create_tables
```
### Create Database
bundle exec rails db:create

I'm lost
I'm just going to try and follow along, it probably won't work and that's ok. 
the goal is exposure

You did get a cool experience of connecting pycharm to a vm, it was actually quite easy

idea: know where a terraform file is locally, go to dir and terraform apply
it provides outputs of a VM that can then be copied into pycharm creds 
then you have a running linux vm that you can access through pycharm.

that way I can develop on linux primarily

### Django Project

### Installing Elastic Beanstalk CLI


