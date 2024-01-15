# SERVICE REQUESTS



Rails 7.0 application that allows the admin to make custom request templates having role-based approval flows and the applicant to apply to these templates.

As part of the process of getting any official work done in the college one has to go through an approval flow. The idea of this module is to digitize all sorts of approval flows throughout the college, be it for changing student records or getting transcripts.

The application uses

* [Devise](https://github.com/plataformatec/devise) for User management and Authentication
* [Rolify](https://github.com/EppO/rolify) for Role management
* [Pundit](https://github.com/elabs/pundit) for authorization
* [Bootstrap](http://getbootstrap.com/) front-end framework

### Demo Video

Here is the link to the Demo Video https://youtu.be/bdH9Fa6wplA showcasing all features of the project

# Dependencies

Before generating your application, you will need:
* The Ruby language - version 3.1.4
* The Rails gem - version 7.0.4
* The Bundler gem - version 2.2.33
* Node - version >= v16
* Yarn - version >= 1.22.19

# Install Ruby & Rails

## In case you are using Mac OS, follow below commands
### Install Xcode tools

Install Xcode from the MacApp Store if you haven't already.
[Refer this in case of any issues](https://stackoverflow.com/questions/9329243/xcode-install-command-line-tools)

### Install HomeBrew

HomeBrew is a package manager for Mac and helps organise the packages you install.

Enter the following command in the terminal to install HomeBrew if you haven't already -
```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### Install `gnupg`

```bash
brew install gnupg
```

## Below steps are common to Linux and MacOS

Install [Ruby Version Manager (RVM)](http://rvm.io/rvm/install).
You can install RVM by running the following commands:

```bash
gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
```

> In case you encounter any issues please check this [link](https://rvm.io/rvm/security)
```bash
# Import and mark the GPG keys as trusted
curl -sSL https://rvm.io/mpapis.asc | gpg --import -
# Install stable version of RVM
curl -sSL https://get.rvm.io | bash -s stable
```
You can also install the [ubuntu apt package](https://github.com/rvm/ubuntu_rvm), but the _process is quite complex if messed up_. 
**We recommend you to install it by following the commands mentioned above**.

> RVM allows you to easily install, manage and work with multiple ruby
> environments.
- Install Ruby (3.1.4)
```bash
rvm install ruby-3.1.4
rvm --default use 3.1.4
```


- Install Bundler (2.2.33) and Rails (7.0.4)
```bash
gem install bundler --version 2.2.33
gem install rails --version 7.0.4
```


- Check if the above steps worked correctly.
```bash
rvm --version
ruby --version    # 3.1.4
bundler --version # 2.2.33
rails --version   # 7.0.4
```
* Finally, you'll need `Node.js` and `Yarn` installed to manage your application's JavaScript. So you can install `nodejs` by running the following command:
```bash
sudo apt install nodejs
```
* We need `yarn` for `esbuild`. To [install yarn](https://classic.yarnpkg.com/en/docs/install/#debian-stable) run the following commands:
```bash
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install yarn
```

- Check and verify your installation
```bash
yarn --version
```

## Getting the Application

#### Clone

If you want to copy and customize the app with changes that are only useful for your own project, you can clone the GitHub repo. You'll need to search-and-replace the project name throughout the application.
To clone:

<pre>
$ git clone git://github.com/RailsApps/rails-devise-pundit.git
</pre>

You'll need [git](http://git-scm.com/) on your machine. See [Rails and Git](http://railsapps.github.io/rails-git.html).

## Getting Started


### Use RVM

I recommend using [rvm](https://rvm.io/), the Ruby Version Manager, to create a project-specific gemset for the application. 


### Install the Required Gems



Run the `bundle install` command to install the required gems on your computer:

<pre>
$ bundle install
</pre>

You can check which gems are installed on your computer with:

<pre>
$ gem list
</pre>

### Set the Database

Prepare the database by running the command:

<pre>
$ rails db:migrate
</pre>

## Test the App

You can check that your application runs properly by entering the command:

<pre>
$ rails server
</pre>

To see your application in action, open a browser window and navigate to [http://localhost:3000/](http://localhost:3000).

You should see a home page.

You should be able to click the navigation links for "Log in" and "Sign up."

Stop the server with Control-C. If you test the app by starting the web server and then leave the server running while you install new gems, you’ll have to restart the server to see any changes. The same is true for changes to configuration files in the config folder. This can be confusing to new Rails developers because you can change files in the app folders without restarting the server. Stop the server each time after testing and you will avoid this issue.
