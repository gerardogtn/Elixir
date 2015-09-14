# Phoenix File Structure
When creating a new Phoenix project, a set of directories are created:

* \_build
* config
* deps
* lib
* priv
* test
* web

## Directory description

### deps
Deps is where all the dependencies (native or third-party) are installed, so you won't be playing with this directory that much.

However, Garret found it heplful to navigate in this directory and see some elixir source code to get familiar with the language.
I haven't tried this, but it seems like a great idea.

### web
The web directory is where everything web-related is stored (routes, models, views, templates, channels). 
