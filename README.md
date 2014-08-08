# jobmap

### overview

### usage

### heroku deploy

heroku apps:create jobmap
heroku addons:add pgbackups
bundle exec figaro heroku:set -e production
heroku run rake db:setup
