Jobmap
================

spec
----

Show a map with jobs posted on it.  Touching a job brings you to a view page for that job, with checkin, a paragraph notes fields (perhaps not editable) and an image upload.  An import task for csv may be required - though I propose either yaml, or just skipping past that straight to the admin UI, it's easier.

models:
* job (lat/lon, notes), has_many :checkins (has_one?), has_many :pictures
* checkin (user_id, job_id) unique for user/job? or multiple checkins on same job.  Multiple users checking in for same job? checkout?
* pictures 

local deploy
------------

rake db:setup
rails server

heroku deploy
-------------

heroku apps:create jobmap
bundle exec figaro heroku:set -e production
git push heroku master
heroku addons:add redistogo
heroku run rake db:setup

Requirements
-------------

This application requires:

- Ruby 2.0.0
- Rails 4.1.0

Getting Started
---------------

Documentation and Support
-------------------------

Issues
-------------

Similar Projects
----------------

Contributing
------------

stephan.com

Credits
-------

(c) stephan.com 2014

License
-------

all rights reserved