Taski: Ruby on Rails Practice
========================================

### Learn Ruby on Rails from Scratch by edutechional

Tutorial for this code can be found at [this playlist](https://www.youtube.com/playlist?list=PLgYiyoyNPrv81SdYk-eoMFacl-CJTO_xa). Jordanhudgens's Github repo for this project can be found [here](https://github.com/jordanhudgens/taski).


## Personal Notes
####(continued from EnterpriseApe project)

###GitHub/Heroku
#####Pushing to Github
```bash
git status
git add .
git commit -m 'comments here'
git push
```

#####Pushing to Heroku
```bash
git push heroku branchname-if-different-from-master
```

#####Creating a new branch (Github)
```bash
git checkout -b branchname
```

#####Switching to a different branch (Github)
```bash
git checkout branchname
```

#####Merging testingbranch to current branch (Github)
```bash
git merge testingbranch
```

#####Revert to previous version (before push) (Github)
```bash
git checkout -- full_file_path_here/file
```


###Ruby
#####Adding Gems
In Gemfile:
```ruby
gem 'gemname'
```
Run in shell:
```bash
bundle install
```

#####Figaro Gem Usage
Handles credentials securely, allowing developer to put credentials locally in config/application.yml but automatically prevents pushing to Github repo
In Gemfile:
```ruby
gem 'figaro'
```
```bash
bundle install
figaro install
```


###Rails
#####Enter sandbox mode
(Automatically rollbacks any changes to prior to entering sandbox)
```bash
rails console --sandbox
```

#####Create new scaffold
(Scaffold: full set of model, database migration for that model, controller to manipulate it, views to view and manipulate the data, and a test suite for each of the above)
```bash
rails generate scaffold ClassName variable:datatype --no-stylesheets
rake db:migrate
rake routes
```
