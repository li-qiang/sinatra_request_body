# SinatraRequestBody

Merge request body to params for sinatra

## Installation

Add this line to your application's Gemfile:

```
gem 'sinatra_request_body'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sinatra_request_body

## Usage

    require 'sinatra_request_body'
    
    register Sinatra::RequestBody

or  work in your custom sinatra app
    
    require 'sinatra_request_body'
    
    class MyApp < Sinatra::Base
    
        register Sinatra::RequestBody
        
    end

## Contributing

1. Fork it ( https://github.com/[my-github-username]/sinatra_request_body/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
