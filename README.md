# lita-restart

[![Build Status](https://travis-ci.org/awaxa/lita-restart.png?branch=master)](https://travis-ci.org/awaxa/lita-restart)

Adds a `restart` command to Lita so you can force it to ... restart.  Useful if
you run your lita bot under something like [runit](http://smarden.org/runit/).

## Installation

Add lita-restart to your Lita instance's Gemfile:

``` ruby
gem 'lita-restart', git: 'https://github.com/awaxa/lita-restart.git'
```

## Configuration

None.  Only admin users can call `restart`.

## Usage

Tell your bot to restart:

```
lita restart
```
