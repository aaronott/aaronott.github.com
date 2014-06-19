# My New home
I've decided to use a bit of Jekyll not only to make things easier, but to learn it. I am a technologist and like to
checkout these new technologies.

## See more
Visit [My Site](http://aaronott.github.com) to see more details.

## Publish
This site is meant to be in two separate branches. The master branch holds all the actual html files while the dev branch holds all the jekyll files (including the sites directory).

I've recently changed the steps below taking it from 9 steps to 4. This is
much easier for me to manage.

Steps to create a new page and publish:
 * git checkout dev
 * rake post title="New Title"
 * edit the new post
 * ./publish.sh

