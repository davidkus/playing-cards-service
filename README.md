# Playing Cards Service ![Build Status](https://github.com/davidkus/playing-cards-service/workflows/CI/badge.svg) [![Code Climate](https://codeclimate.com/github/davidkus/playing-cards-service/badges/gpa.svg)](https://codeclimate.com/github/davidkus/playing-cards-service) [![Test Coverage](https://codeclimate.com/github/davidkus/playing-cards-service/badges/coverage.svg)](https://codeclimate.com/github/davidkus/playing-cards-service/coverage)

A web service that serves up images of playing card hands and dice rolls.

## Running

Install dependencies:
```
bundle install
```

Run:
```
heroku local web
```

Run tests:
```
bundle exec rspec
```

## APIs

### Retrieve Cards

Retrieve a set of cards.
```
GET {base}/cards/{cards}
```
Example: https://playing-cards-service.fly.dev/cards/2H-3D-4C

### Retrieve Dice

Retrieve a set of dice
```
GET {base}/dice/{dice}
```
Example: https://playing-cards-service.fly.dev/dice/1F-2F-3F

## License

See LICENSE.txt

## Contributing

1. Fork it ( https://github.com/davidkus/playing-cards-service/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
