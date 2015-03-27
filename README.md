## Running the website locally

Given I have cloned the repo

    git clone git@github.com:geekcamp-ph/rubyonrails.geekcampbaguio.com.git

And I am in the directory of the clone repo

    cd rubyonrails.geekcampbaguio.com

And I have installed the ruby bundle

    bundle install

When I run `serve`

And I go to http://localhost:4000

Then I should see the Ruby on Rails guide for Geekcamp Baguio

## Deploying to the project's site

Given I am in the project directory

And I have added the heroku repo as a remote repo

    git remote add heroku git@heroku.com:ruby-geekcampbaguio.git

When I push master to heroku

    git push heroku

And I go to https://ruby-geekcampbaguio.herokuapp.com/

Then I should see that the website has been deployed
