# Weinre::Rails

Some helpers for integrating the awesome Weinre app with a Rails 3.1+ set up. It wouldn't take took much to use it with Rails < 3.1 as long as you're ok with getting the asset pipeline bolted in. It's assumed that if you're using this for testing with Cucumber that you'll be using something like Capybara so that you have a Javascript engine. 

## Installation

Add this line to your application's Gemfile:

	group :cucumber, :development, :test do
  		gem 'weinre-rails'
	end

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install weinre-rails

## Usage

This is a very simple wrapper done as a Rails Engine which gives us Asset Pipeline goodness. To use it just put a 

	//= require weinre-rails
	
Into your `application.js` and you'll be off to the races. Whenever you want to connect to a Weinre server just execute:

	$.connectWeinre()
	
from your javascript and you're good to go. 

There's a handy cucumber step that lets you pause a scenario and inspect the current state of the test in Weinre. To do this include `weinre-rails/cucumber` in `env.rb` like so:

	require 'weinre/rails/cucumber'
	
And in your scenario do something like:

	Scenario: I'm testing something complicated
		Given I am doing something complicated with javascript
		When some weird condition occurs
		Then I start remote debugging
			Execution paused by weinre-rails, press enter when ready
		
The app will pause until you hit *enter* in the console at which point it will keep going. 

By default the cucumber test will try to connect to:
	
	http://localhost:8080/target/target-script-min.js#anonymous
	
If you want to change that you can:

	Weinre::Rails.url = "http://localhost:9090/target/target-script-min.js#anonymous"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
