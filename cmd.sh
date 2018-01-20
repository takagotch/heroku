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


