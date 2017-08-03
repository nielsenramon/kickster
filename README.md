Kickster
========

[![Join the chat at https://gitter.im/nielsenramon/kickster](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/nielsenramon/kickster?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Kickster provides a basic Jekyll project setup packed with web best practises and useful optimization tools increasing your overall project quality. Kickster ships with automated and worry-free deployment scripts for GitHub Pages.

Used tools:

  - [Autoprefixer](https://github.com/postcss/autoprefixer)
  - [Circle CI](https://circleci.com/)
  - [Html-proofer](https://github.com/gjtorikian/html-proofer)
  - [Jekyll](http://jekyllrb.com/)
  - [Jekyll assets](https://github.com/jekyll/jekyll-assets)
  - [Jekyll Sitemap](https://github.com/jekyll/jekyll-sitemap)
  - [HTML5 Boilerplate](https://html5boilerplate.com/) (Influenced by)
  - [Yarn](https://yarnpkg.com)

## Installation

If you haven't installed the following tools then go ahead and do so (make sure you have [Homebrew](https://brew.sh/) installed):

    brew install ruby
    brew install npm

On windows, install Ruby and Node with the installers found here:

  - [Ruby](https://rubyinstaller.org/)
  - [Node.js](https://nodejs.org/en/download/)

Install the gem:

    gem install kickster

Execute gem and scaffold Kickster files:

    kickster new site_name

Setup your environment:

    cd site_name
    bin/setup

You can push your project to any branch except `gh-pages`. For `sitename.github.io` repo users make sure to use another branch than `master`.

## Development

Run Jekyll:

    bundle exec jekyll serve

*If you do not want the Kickster setup but just the deploy scripts then copy them from the `bin` folder.*

## Deploy to GitHub Pages

Run this in the root project folder in your console:

    bin/deploy

*Don't forget to enable your repository on [Circle CI](https://circleci.com/docs/getting-started) and update the `_config.yml` file with your url!*

## Automated deployment with Circle CI

Automated deployment is by default not included in your Kickster generated Jekyll project. Please follow the steps below to include automated deployment.

*Note that changes will only deploy when your code is merged into master.*

#### 1. Copy the required automated deploy script

Copy the [automated](https://github.com/nielsenramon/kickster/blob/master/snippets/circle/automated) script inside the `/bin` folder of your project (make sure the file has execute permissions!).

#### 2. Update `circle.yml`

Replace your `circle.yml` file with [this](https://github.com/nielsenramon/kickster/blob/master/snippets/circle/circle.yml) one. And adjust the following 2 lines with your information:

    - USER_NAME: <your-github-username>
    - USER_EMAIL: <your-github-email>

#### 3. Enable Circle CI.

Make sure you enabled your repository on Circle CI.
After that we have to create a Read/Write deployment key. All 3 steps can be found [here](https://circleci.com/docs/adding-read-write-deployment-key/).

In short:

  1. Create a ssh key on your computer: `ssh-keygen -t rsa -b 4096 -C "your_email@example.com"` (leave the passphrase empty).

  2. Create a new deploy key in your GitHub project and paste the public key in there and make sure you "Allow write access".

  ![Enable Circle CI Step 2](https://raw.githubusercontent.com/nielsenramon/kickster/master/images/kickster-step2.png)
  3. Create a new SSH key in the "SSH Permissions" tab under your project settings in Circle CI and paste the private key in there with the hostname: `github.com`.

  ![Enable Circle CI Step 3](https://raw.githubusercontent.com/nielsenramon/kickster/master/images/kickster-step3.png)

That's it, start pushing changes and enjoy your automated deployments from now on!

_Want to use Travis CI? [Click here](https://github.com/nielsenramon/kickster/tree/master/snippets/travis) to view all info on how to setup._

## Support

Need help with setting up Kickster? Join me on [Gitter](https://gitter.im/nielsenramon/kickster) and I help you out.

If you found a bug please report it in [GitHub issues](https://github.com/nielsenramon/kickster/issues).

## License

MIT License

## Contributing

1. Fork it ( https://github.com/[my-github-username]/kickster/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

Big thanks to [@wouterw](https://github.com/wouterw) for helping out with his Ruby magic.
