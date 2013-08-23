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

## Deploying to the project's gh-pages branch

    Given I am in the project directory

    And I have cloned the repo to an html subdirectory under the project directory
      git clone git@github.com:geekcamp-ph/rubyonrails.geekcampbaguio.com.git html

    And I checked out the gh-pages branch of the html subdirectory
      cd html
      git co gh-pages
      cd ..

    When i run `serve export`

    And I commit the changes in the html subdirectory
      cd html
      git add -A
      git commit -m "Update gh-pages"
      git push

    And I go to http://geekcamp-ph.github.io/rubyonrails.geekcampbaguio.com/

    Then I should see that the website has bee deployed
