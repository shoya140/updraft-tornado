updraft-tornado
===========

The scaffold for my web applications

## Features

* Installing Twitter Bootstrap, jQuery, Backbone.js and Underscore.js
* Auto-compiling coffee script and sass sources.
* Foreman script for Heroku

## Requirements

* bower
* grunt
* coffee-script
* sass
* tornado
* foreman

## Setup

    # Install requirements (if necessary)
    $ npm install -g bower grunt-cli coffee-script
    $ gem install sass foreman
    $ pip install tornado

    # Install packages for grunt.
    $ npm install

## Start

    $ grunt
    $ python main.py --port=8000 --debug=True # port and debug are option