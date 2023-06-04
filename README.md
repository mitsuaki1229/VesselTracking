# VesselTracking
Vessel tracking API Server.

====

## Requirement

```shell
$ brew install rbenv
$ brew upgrade ruby-build
$ rbenv install 3.2.2
$ gem install bundler
```

## Install

```shell
$ bundle install --path=.bundle
```

```shell
$ rake db:create
$ bundle exec rails db:migrate RAILS_ENV=test
```

## Development

## run

```shell
$ bundle exec rails s
```

### Confirm

* http://127.0.0.1:3000/vessels
* http://127.0.0.1:3000/voyage_histories

### Test

```shell
$ bundle exec rails test
```

## Licence

* [No License](https://choosealicense.com/no-permission/)

## Author

[mitsuaki1229](https://github.com/mitsuaki1229)
