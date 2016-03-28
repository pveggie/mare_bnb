Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates)


SETUP

CREATING REPOSITORY
<p>1. In the terminal, navigate to the folder code/YOUR_GITHUB_USERNAME, e.g. "cd code/pveggie"</p>
<p>2. In main project page on github, mare_bnb, make sure the clone url has SSH next to it (as opposed to HTTPS)</p>
<p>3. Back in the terminal type git clone and the copy in the clone url. e.g. git clone git@github.com:pveggie/mare_bnb.git</p>

ADDITIONAL SETUP FOR GEMS
Start by installing all gems in the bundle
$ bundle install

FIGARO
$ bundle binstubs figaro
$ figaro install
$ spring stop
You should get a message saying that appliation.yaml has been created and that it's been added to the .gitignore list.
Add cloudinary url to the application.yaml file

SIMPLE_FORM & DEVISE FILES are already created in the template.

DATABASE
Exists. Only necessary to run db:migrate and db:seed 
