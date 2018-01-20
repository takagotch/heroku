rails g delayed_job:active_record
rake db:migrate

heroku local
git push heroku master

heroku run rake db:migrate
heroku ps
heroku ps:scale worker=1
heroku run rails condole
heroku logs -p worker -t
heroku run rake jobs:work

bundle install --without production
heroku create
git push heroku master
heroku console
heroku run rake db:migrate
heroku addons:create memcachier:dev
bundle install --without production
rails g scaffold contact name:string email:string
rake db:migate



