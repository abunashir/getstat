# Getstat Client

[![Build
Status](https://travis-ci.org/abunashir/getstat.svg?branch=master)](https://travis-ci.org/abunashir/getstat)

The Ruby Interface to the Getstat API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "getstat", github: "abunashir/getstat"
```

And then execute:

```sh
$ bundle install
```

## Configure

We need to setup Getstat API configuration before we can perform any request
throughout this client

First, [obtain an API key] for your account, and once you have it then you can
configure the client by adding an initializer with the following code:

```ruby
Getstat.configure do |config|
  config.api_host = "www.getstat.com"
  config.api_key = "YourSecretAPIKey"
end
```

## Usage

### List Keywords

```ruby
Getstat::Keyword.list(site_id: 1234, **other_params)
```

## Development

We are following Sandi Metz's Rules for this gem, you can read the [description
of the rules here] All new code should follow these rules. If you make changes in
a pre-existing file that violates these rules you should fix the violations as
part of your contribution.

### Setup

Clone the repository.

```sh
git clone https://github.com/abunashir/getstat
```

Setup your environment.

```sh
bin/setup
```

Run the test suite

```sh
bin/rspec
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/abunashir/getstat.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

[obtain an API key]: https://help.getstat.com/knowledgebase/using-the-stat-api/
[description of the rules here]: http://robots.thoughtbot.com/post/50655960596/sandi-metz-rules-for-developers
