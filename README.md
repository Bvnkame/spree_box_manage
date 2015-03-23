SpreeBoxManage
==============

[![Build Status](https://travis-ci.org/Bvnkame/spree_box_manage.svg?branch=master)](https://travis-ci.org/Bvnkame/spree_box_manage)

Introduction goes here.

Installation
------------

Add spree_box_manage to your Gemfile:

```ruby
gem 'spree_box_manage'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_box_manage:install
```

Testing
-------

First bundle your dependencies, then run `rake`. `rake` will default to building the dummy app if it does not exist, then it will run specs. The dummy app can be regenerated by using `rake test_app`.

```shell
bundle
bundle exec rake
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_box_manage/factories'
```

Copyright (c) 2015 [name of extension creator], released under the New BSD License
