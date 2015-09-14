# Installing Phoenix
To install Phoenix on your project directory, Garrett recommends using the following terminal commands:

``mix phoenix.new phoenix_crud ~/code/phoenix_crud``

``mix do deps.get, compile``

``mix phoenix.start``

NOTE: I actually followed a different set of steps, see below for more details.

## What does it actually mean??

### Phoenix new.
Phoenix new is basically just saying, "I want to start a new project using the Phoenix framework." To do so, you basically need two things: (a) the project name, (b) the directory where the project will be stored.


For example, if I want to create a project named bananas that is stored in ~/bananas I would simply type:

``mix phoenix.new bananas ~/bananas``


### Phoenix compile.
This is basically just saying compile all the dependencies used in this project (typically Ecto, Plugin, and others).

``mix do deps.get, compile``

### Phoenix Start
Starts a server project.

## What did I actually do??
Phoenix is vibrant, and growing. So, even though Garrett's guide was published in 2014, by mid 2015 there are already a bunch of changes in Elixir, to take this into account, I followed the steps in Phoenix's website on installing Elixir (can be found at http://www.phoenixframework.org/docs/installation)

### Install the Phoenix archive.
I started by installing the Phoenix archive locally, although I'll have to be careful to keep updating this archive for future projects, for now I installed the latest(v1.0.2) version available.

``$ mix archive.install https://github.com/phoenixframework/phoenix/releases/download/v1.0.2/phoenix_new-1.0.2.ez``

Note, by default Phoenix is configured to use postgreSQL as its DBMS and brunch.io to compile static assets.
To avoid using brunch use the --no-brunch file while installing the Phoenix archive.
To install node.js you'd simply install the node dependency in your project (i.e. via Homebrew). Similarly to use mySQL instead of postgreSQL you'd use the --database flag with the mysql parameter.

### Phoenix new.
Same steps as above.

By default, Phoenix new will ask if you want to run deps.get; so you can avoid running the mix deps.get command.

### Started Ecto

``$ mix ecto.create``

In order for ecto.create to work properly, you must have postgreSQL installed on your computer, to do so Ivan Stork has quite a nice guide that worked for me: https://www.codefellows.org/blog/three-battle-tested-ways-to-install-postgresql

Note that some errors may occur when executing mix ecto.create, make sure to check the phoenix website to try and solve them (link below). http://www.phoenixframework.org/docs/mix-tasks#section--ecto-create-


### Phoenix server.

Phoenix changed the name of the phoenix.start command to phoenix server. It's the same command, only the name has changed.

This will basically start a local host on port 4000 to access your app from a browser.

``$ mix phoenix.server``

To stop hosting your web app, type ctrl-c twice. ;)
