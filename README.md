# Meal Planner

Do you have a busy life? Is it hard for you to plan your meals? Is your shopping list a mess and you have to go every day to the supermarket? If your answer is yes, this project is tailor made for you too.

With Meal Planner you will be able to use and create recipes to plan your weekly meals and automatically generate a shopping list for your family needs.

The project is in a very early stage and it is not recommended to be used in production yet, due to several improvements needed and tests. Due to lack of time and resources, as in every OSS, any help and contribution is more than welcome.

## Installation

It is a Ruby on Rails project, you need to install Ruby 2.4.1. I use rvm for that, but it's up to you.

Once Ruby is installed:

```
gem install bundler -v=1.15.4
bundle install
bundle exec rake db:migrate
bundle exec rake db:seed
bundle exec rails s
```

And you should be good to go!

## Usage

TODO: Add tutorial...

## Improvements to do in near future

At least in my mind:
* Add tests
* Add metadata to recipes: Author, origin, ...
* Improve validations on models
* Improve navigation
* Add styles and improve UX
* Multi language support for recipes and ingredient names
* ...

## Contributing

When contributing to this repository, please first discuss the change you wish to make via issue, email, or any other method before making a change.

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## Credits

TODO: Write credits

## Authors

* **JuanMiguelGM** - *Initial work* - [JuanMiguelGM](https://github.com/JuanMiguelGM)

## Contributors

João Soares (@Morthor)
Contribute and add you name here :D

## License

TODO: Pending to have a license
