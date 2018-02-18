# Tutorial de Csound.

A Jekyll-based website for learning Csound, using web Csound (Emscripten/PNaCl) to run Csound within the browser.

To view the site, please go to http://gsenna.github.io/learn-csound-site

## Instructions

First, make a clone of the project locally: 

    git clone git://github.com/gsenna/learn-csound-site.git
    cd learn-csound-site

From this directory, run Bundler to install the required gems:
    
    bundle install

This installed the github-pages gem.

To view the site locally with `jekyll`, run:

    bundle exec jekyll serve --watch --baseurl

This will start up a jekyll server. You can view the pages as they are rendered by Jekyll in your browser at:

    http://localhost:4000
    
Also, with the --watch command, anytime you change a page, you can view the updates by refreshing the browser.
