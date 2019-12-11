# corporation

## Installation

### Preparation

Require personal apis and models in `lib/swagger_client.rb`

```ruby
# Add below
Dir.glob(File.expand_path('../swagger_client/corporation/models/*', __FILE__)).each do |file|
  require file
end

Dir.glob(File.expand_path('../swagger_client/corporation/api/*', __FILE__)).each do |file|
  require file
end
```

### Build a gem

To build the Ruby code into a gem:

```shell
gem build swagger_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./swagger_client-1.0.0.gem
```
(for development, run `gem install --dev ./swagger_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'swagger_client', '~> 1.0.0'
