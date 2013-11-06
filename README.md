# My New home
I've decided to use a bit of Jekyll not only to make things easier, but to learn it. I am a technologist and like to
checkout these new technologies.

## See more
Visit [My Site](http://aaronott.github.com) to see more details.

## Publish
This site is meant to be in two separate branches. The master branch holds all the actual html files while the dev branch holds all the jekyll files (including the sites directory).

Steps to create a new page and publish:
 * git checkout dev
 * rake post title="New Title"
 * edit the new post
 * jekyll --server (this allows jekyll to build all the files so kill it after it's done)
 * git add .
 * git commit -m <message>
 * ./publish.sh
 * git checkout master
 * git push

Seems like a lot of steps but it goes pretty quickly.
