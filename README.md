# GMO Aozora Net Bank Open Api Ruby SDK

## About

GMOあおぞらネット銀行について

https://gmo-aozora.com/

GMOあおぞらネット銀行 API開発者ポータルについて

https://api.gmo-aozora.com/ganb/developer/

## Version

1.0.0

## Requirements

Ruby 1.9+

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build swagger_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./swagger_client-1.0.0.gem
```

### Install from Git

add the following in the Gemfile:

    gem 'swagger_client', :git => 'https://github.com/gmoaozora/gmo-aozora-api-ruby

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

###  Enviroment

- stg

    [configuration.rb](lib/swagger_client/configuration.rb#L132)
    
    ```ruby
    @host = 'https://stg-api.gmo-aozora.com/ganb/api'
    ```

    [nonce_factory.rb](lib/swagger_client/auth/api/nonce_factory.rb#L19)
    
    ```ruby
    iss: "https://stg-api.gmo-aozora.com"
    ```
    
- prod

    [configuration.rb](lib/swagger_client/configuration.rb#L132)
    
    ```ruby
    @host = 'https://api.gmo-aozora.com/ganb/api'
    ```

    [nonce_factory.rb](lib/swagger_client/auth/api/nonce_factory.rb#L19)
    
    ```ruby
    iss: "https://api.gmo-aozora.com"
    ```


## Documentation 

 - [Authorization](docs/authorization)
 - [Corporation](docs/corporation)
 - [Personal](docs/personal)
 - [Webhook](docs/webhook)


## Author

GMO Aozora Net Bank, Ltd. (open-api@gmo-aozora.com)

## License

[MIT](https://github.com/gmoaozora/gmo-aozora-api-ruby/blob/master/LICENSE)
