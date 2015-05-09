kickster
========

*Jekyll starter template with GitHub Pages deploy to kickstart your project.*

### Installation

Set up your environment

    bin/setup

If you do not want the Kickster files but just the deploy then copy `bin/setup` script to your repo and your ready to go.

Update `baseurl` and `assets:baseurl` in `_config.yml` with the correct path.

### Development

Run Jekyll

    bundle exec jekyll serve --watch

Used tools:
  - [Jekyll assets](http://ixti.net/jekyll-assets/)
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
