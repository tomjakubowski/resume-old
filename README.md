# Tom Jakubowski's Resume

Before doing anything, install the bundle:

    gem install bundler
    bundle install

I'm using the system Ruby interpreter that comes with Mac OS X because
[wkpdf](http://plessl.github.com/wkpdf/) relies on RubyCocoa. To build
a pdf:

    rake pdf

To rebuild the `resume.css` from `resume.sass`:

    rake styles:build

To watch `resume.sass` for changes and automatically build `resume.css`:

    rake styles:watch

A current copy of my resume is always available at:

https://s3.amazonaws.com/media.crystae.net/Tom+Jakubowski+-+Resume.pdf