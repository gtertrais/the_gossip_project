# The_Gossip_Project



>Created on 05/08/2019 by Antoine Delarchand, Adrien  Audebert and Gaspard Tertrais.



**Note aux correcteurs**

My program is complete

To test the program please run :
bundle install
rails db:create
rails db:migrate
rails db:seed
rails server

Then, open your navigator and go to "http://localhost:3000/"



## Content



- **db/seed** : Test and explaination
- **db/migrate**: All the migrations
- **app/models** : All the models
- **app/views/dynamic_pages** : All the dynamic pages
- **app/views/static_pages** : All the static pages
- **Gemfile, Gemfile.lock** : Gem and dependencies. See below.



## Classes



Provides methods and variables to organize class process and its different phases.



- **ApplicationRecord**
- **City**
- **CommentBi**
- **Comment**
- **GossipToTag**
- **Gossip**
- **Like**
- **PrivateMessage**
- **Tag**
- **User** 



## Gemfile



```



source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'faker'
gem 'table_print'


gem 'rails', '~> 5.2.3'

gem 'sqlite3'


gem 'uglifier', '>= 1.3.0'

