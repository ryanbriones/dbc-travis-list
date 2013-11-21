# Travis' List

[![Build Status](https://travis-ci.org/ryanbriones/dbc-travis-list.png?branch=master)](https://travis-ci.org/ryanbriones/dbc-travis-list)

A craigslist clone to demonstrate working with Travis CI and a Behavior-driven Development style of testing.

## Running

### Setup

Requires:

* Ruby 1.9.3 or greater
* PostgreSQL
* RubyGems
* Bundler

        $ git clone https://github.com/ryanbriones/dbc-travis-list.git
        $ cd dbc-travis-list
        $ bundle
        $ cp config/database.example.yml config/database.yml
        # Edit config/database.yml with your postgres settings

### Server

        $ rails server

### Tests

        $ rake spec

Run coverage report locally

        $ bundle exec coveralls report

## Contact

Ryan Briones <ryan@devbootcamp.com>