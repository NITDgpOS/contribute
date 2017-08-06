# Contribute[![Build Status](https://api.travis-ci.org/NIT-dgp/contribute.svg?branch=master)]

Have you been looking for open source repositories to contribute? Look no further! You have come to right place. This gem will find active repositories from github to eat away your weekend time. Say goodbay to fruitless late night research, tiring click surfing and the voice in your head which make you feel guilty for not doing enough. Be warned! Your life will never be same after you have installed this gem. We offer all these unbelievbale features at a never before price of FREE! FREE! FREE!
Why are you still waiting? Get your terminals rolling, install this gem and experience the change.

:exclamation:Disclaimer: This gem is WIP. We will be adding exciting features like sorting repos by most newcomer issues and active pulse. Until then you should have a look at :point_right: http://up-for-grabs.net/#/

## Installation :dvd: 

Add this line :point_down: to your application's Gemfile:

```ruby
gem 'contribute'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install contribute

## Usage :iphone:

You will need your api access token. :point_right: [Github people have written about how can you get those magic bits](https://github.com/blog/1509-personal-api-tokens).

Rename `.token.yml.exmaple` to `.token.yml`.
```
cp .token.yml.example .token.yml
```

Replace `your_github_token` in `.token.yml` with your github token.

### Look at the stars, Look how they shine for you

You can chain various options. For example, following command will return repos with primary language ruby and whose stars are between 1000 and 5000:

```Ruby
Contribute::Finder.new.language("ruby").stars(1000,5000).find
```

You can also use any search string as per :green_book: [github documentation](https://help.github.com/articles/searching-code/) to find repos.

```Ruby
Contribute::Finder.new("language:ruby").find
```

#### Finding repos :mag:
You can filter out repo of your interest using following methods:
* `forks`
* `stars`
* `langauge`

#### Sorting and ordering :scroll:
Sort repos by calling `sort_by`. Call `order` with `desc` or `asc` to order your repos in descending and ascending order respectively.
```Ruby
# valid option for sorting: created, updated, stars, forks
Contribute::Finder.new("language:ruby").sort_by('stars').order('asc').find
```
Use `Contribute::ExtendedSort` module if you would like sort by name, size, watchers and issues.
```Ruby
repos = Contribute::Finder.new("language:ruby").find
Contribute::ExtendedSort.sort_by!(repos, 'size')
```

## Development :computer:

Omg Stranger! You are very kind for reading this. Contribute needs you! Get your environment loaded with all the gems you will need in your journey ahead:

```sh
# In side contribute folder
$ pwd
/home/addie/contribute

# Install dependencies
$ bundle install
```

Make changes to code and test it in terminal:
```sh
# Load copy of your gem in your irb
$ irb -Ilib -rcontribute
2.3.1 :001 > Contribute::Finder.new('language:ruby').find
```

Take at look at :book: [our issues board](https://github.com/NIT-dgp/contribute/issues).

## License :orange_book:

The gem is available as open source under the terms of the :page_facing_up: [MIT License](http://opensource.org/licenses/MIT).

