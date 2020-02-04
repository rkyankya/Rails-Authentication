# Authentication
Microverse Ruby on Rails Project No.6 [Authentication]

This assignment consists of using the bcrypt gem to have a first approach at authentication in rails. You will build an application that allows users to create posts and the authors of the posts are displayed only if as a User you are logged in.
Full task description: https://www.theodinproject.com/courses/ruby-on-rails/lessons/authentication.

## Setup
You can setup this project by;

#### Either Cloning it 
        git@github.com:rkyankya/Rails-Authentication.git
#### Or downing the Zipped file from 
        https://github.com/rkyankya/Rails-Authentication.git

## Live version
[Heroku Live Version]( https://microverse-auth.herokuapp.com/)

## Login Heroku
	Email "foo1@bar.com"  Password "foobar"

## Before you start

- Remember to run "`bundle install`" in your terminal. In case of an error run "`bundle update`".  

- Afterwards, run "`rails db:prepare`" . This is the same as runing `rails db:create `and 
"`rails db:migrate`" in succession.

- Run `db:seed`. This generates users and posts automatically

- To login after users are generated **Email** "foo1@bar.com"  **Password** "foobar"
- We have a cool gem! To use it, run the rails console typing "rails c" in your terminal and when it loads type in the first line "Hirb.enable", it will return true if everything is working. Now you can see the tables of the database!

# Built with

- Ruby ~> 2.6.5
- Rails ~> 6.0.2
- VSCode

# Authors

- Kyankya Raymond: [Github](https://github.com/rkyankya)
- Lucas Mazo: [Github](https://github.com/lucasmazo32)
