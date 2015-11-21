Kickster
========

[![Join the chat at https://gitter.im/nielsenramon/kickster](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/nielsenramon/kickster?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Kickster provides a basic Jekyll project setup packed with web best practises and useful optimization tools increasing your overall project quality. Kickster ships with automated and worry-free deployment scripts for GitHub Pages.

## Installation

Install the gem:

    gem install kickster

Execute gem and scaffold Kickster files:

    kickster new site_name

Setup your environment:

    bin/setup

*If you do not want the Kickster files but just the deploy then copy the `bin/deploy` script to your repo and your ready to go.*

## Development

Run Jekyll:

    bundle exec jekyll serve --watch

Used tools:
  - [Autoprefixer](https://github.com/postcss/autoprefixer)
  - [Bower](http://bower.io/)
  - [Jekyll](http://jekyllrb.com/)
  - [Jekyll assets](https://github.com/jekyll/jekyll-assets)
  - [HTML5 Boilerplate](https://html5boilerplate.com/) (Influenced by)
  - [Travis CI](http://travis-ci.org)

## Manual deploy to GitHub Pages

Run this in the root project folder in your console:

    bin/deploy

That's it, enjoy your nicely build project on GitHub pages!

## Automated deployment with TravisCI

Automated deployment is by default not included in your Kickster generated Jekyll project. Please follow the steps below to include automated deployment.

*Note that changes will only deploy when your code is merged into master.*

#### 1. Copy the required automated deploy script

Copy the [automated](https://github.com/nielsenramon/kickster/blob/master/snippets/automated) script inside the `/bin` folder of your project.

#### 2. Update `.travis.yml`

Replace your `.travis.yml` file with [this](https://github.com/nielsenramon/kickster/blob/master/snippets/.travis.yml) one.
And adjust the following 2 lines with your information:

    - USERNAME: <your-github-username>
    - EMAIL: <your-github-email>

#### 3. Create a personal access token

This is required to push to the GitHub repo from a script.

In GitHub go to `settings > Personal access tokens` and create a new one.
First give it a proper name so it is easy to recognize later. Then check `repo` (check `public_repo` if it is a public repository) and click on create.

<img src="https://dl.dropboxusercontent.com/u/20823269/kickster-token.png" alt="Screenshot of token generation in GitHub">

Copy the generated token.

*Don't forget to enable your repository in [Travis CI](https://travis-ci.org/)*

Go back to your project in terminal and input the following:

    gem install travis
    travis encrypt GITHUB_TOKEN=secret-token-from-github --add

This added a line inside your `.travis.yml' file like this:

    secure: <encrypted token>

That's it, enjoy your automated deployments from now on!

## License

MIT License

## Contributing

1. Fork it ( https://github.com/[my-github-username]/kickster/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

Big thanks to [@wouterw](https://github.com/wouterw) for helping out with his Ruby magic.
