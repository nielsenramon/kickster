Kickster
========

[![Join the chat at https://gitter.im/nielsenramon/kickster](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/nielsenramon/kickster?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Jekyll starter template with GitHub Pages deploy to kickstart your project.

### Installation

Install the gem:

    gem install kickster

Execute gem and scaffold Kickster files:

    kickster new site_name

Set up your environment:

    bin/setup

Update `baseurl` and `assets:baseurl` in `_config.yml` with the correct path.

*If you do not want the Kickster files but just the deploy then copy `bin/setup` script to your repo and your ready to go.*

### Development

Run Jekyll

    bundle exec jekyll serve --watch

Used tools:
  - [Jekyll assets](https://github.com/jekyll/jekyll-assets)
  - [Bower](http://bower.io/)
  - [Jekyll](http://jekyllrb.com/)
  - Influences from [HTML5 Boilerplate](https://html5boilerplate.com/)
  - [Autoprefixer](https://github.com/postcss/autoprefixer)

### Deploy to GitHub Pages

Run this script and add a customized deploy message:

    bin/deploy "custom_message"

### Why

Setting up GitHub Pages websites with Jekyll for projects or clients is cumbersome as you have to setup everything from scratch. Kickster helps you kickstart your project settling you with a basic starter template and easy deploy. Deploying is completed in 1 second so updating your website or prototype is a breeze.

You can find example project [here](https://github.com/nielsenramon/kickster/tree/website).

### License

MIT License

### Contributing

1. Fork it ( https://github.com/[my-github-username]/kickster/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

Big thanks to [@wouterw](https://github.com/wouterw) for helping out with his Ruby magic.
