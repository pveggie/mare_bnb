Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates)


SETUP

<h2>CREATING REPOSITORY</h2>
<ol>
<li>In the terminal, navigate to the folder code/YOUR_GITHUB_USERNAME, e.g. "cd code/pveggie"</li>
<li>In main project page on github, mare_bnb, make sure the clone url has SSH next to it (as opposed to HTTPS)</li>
<li>Back in the terminal type git clone and the copy in the clone url. e.g. git clone git@github.com:pveggie/mare_bnb.git</li>
</ul>

<h2>OPEN FOLDER</h2>
<p>$ cd mare_bnb</p>

<h2>ADDITIONAL SETUP FOR GEMS</h2>
<p>Start by installing all gems in the bundle</p>
<p>$ bundle install</p>

<h3>FIGARO</h3>
<ol>
<li>$ bundle binstubs figaro (step may not be required)</li>
<li>$ figaro install</li>
<li>$ spring stop</li>
</ol>
<p>You should get a message saying that appliation.yaml has been created and that it's been added to the .gitignore list.
Add cloudinary url to the config/application.yaml file</p>

<h3>SIMPLE_FORM & DEVISE FILES</h3>
<p>Already created in the template.</p>

<h2>DATABASE</h2>
<p>Run db:create, db:migrate and db:seed.</p>
