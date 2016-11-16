# Contribute

Have you been looking for open source reposotires to contribute? Look no further! You have come to right place. This gem will find active reposotries from github to eat away your weekend time. Say goodbay to fruitless late night research, tiring click surfing and the voice in your head which make you feel guilty for not doing enough. Be warned! Your life will never be same after you have installed this gem. We offer all these unbelievbale features at a never before price of FREE! FREE! FREE!
Why are you still waiting? Get your terminals rolling, install this gem and experience the change.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'contribute'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install contribute

## Usage

You will need you api access token. [Github people have written about how can you get those magic bits](https://github.com/blog/1509-personal-api-tokens).

Rename `.token.yml.exmaple` to `.token.yml`.
````
cp .token.yml.example .token.yml
```

Replace `your_github_token` in `.token.yml` with your github token.

### Look at the stars, Look how they shine for you

Find repos with most stars and open issues, while you hum to [Coldplay in background](https://www.youtube.com/watch?v=yKNxeF4KMsY).

```Ruby
Contribute::Finder.stars
```

###  

## Development

Omg Stranger! You very kind for reading this. Contribute needs you! Get your environment loaded with all the gems you will need in your journey ahead:

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
2.3.1 :001 > 

Take at look at [what enemies are up to](https://github.com/NIT-dgp/contribute/issues).
Slay many bug, you will. Yes, hmmm.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

