kickster
========

*Jekyll starter template with GitHub Pages deploy to kickstart your project.*

### Installation

Set up your environment

    bin/setup

If you do not want the Kickster files but just the deploy then copy `bin/setup` script to your repo.

Update `baseurl` and `assets:baseurl` in `_config.yml` with the correct path.

### Development

Run Jekyll

    bundle exec jekyll serve --watch

How to use jekyll-assets can be found here: http://ixti.net/jekyll-assets/

### Deploy to GitHub Pages

Run this script and add a customized deploy message:

    bin/deploy "custom_message"

### License

MIT License
