Automated deploy with Travis CI
===============================

Kickster can also work with [Travis CI](https://travis-ci.org/), follow the steps below to set it up.

## Automated deployment with TravisCI

Automated deployment is by default not included in your Kickster generated Jekyll project. Please follow the steps below to include automated deployment with travis.

*Note that changes will only deploy when your code is merged into master.*

#### 1. Copy the required automated deploy script

Copy the [automated](https://github.com/nielsenramon/kickster/blob/master/snippets/travis/automated) script inside the `/bin` folder of your project (check if the file has execute permissions!).

#### 2. Add `.travis.yml`

Copy the `.travis.yml` from the [snippets](https://github.com/nielsenramon/kickster/blob/master/snippets/travis/.travis.yml) folder inside the `/bin` folder of your project(check if the file has execute permissions!).

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
