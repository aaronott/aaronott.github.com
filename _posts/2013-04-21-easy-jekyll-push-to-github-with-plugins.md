---
layout: post
title: "Easy Jekyll push to Github with plugins"
description: "jekyll"
category: jekyll 
tags: [jekyll]
---
{% include JB/setup %}

Today I was looking at a way to create a "Readmore" link on the front page of
this blog. This allows for me to have a nice dynamic listing on the front page
without having to display the entire contents of each blog.

Since I'm new to Jekyll and don't have much experience with Ruby either, I
looked to the webs assuming that I'm not the first one to think of such crazy
ideas.

<!--more-->

I ran across a few different posts including [this one](http://www.jacquesf.com/2011/03/creating-excerpts-in-jekyll-with-wordpress-style-more-html-comments/) 
which I ended up using. So I created the postmore.rb file in my \_plugins
directory and BAM! it worked just like I wanted. I made the modifications to
some of my more recent posts and tested everything locally. Everything was
looking great so I pushed up to Github only to find that things were now
looking different. Some investigation revealed that Github doesn't run 3rd
party plugins so I wasn't going to be able to use the solution that I was very
recently so excited about.

"Ok Internets, let's try this again." Again assuming that I'm not the first
one to run into this issue I set out to find a solution. I actually ran across
many different really good solutions but decided on [this one](http://edhedges.com/blog/2012/07/30/jekyll-with-plugins-hosted-on-github-pages/)
by [Eddie Hedges](https://twitter.com/Dwedard). I'd highly recommed you read
Eddies description as well as the original answer he got from [Stack Overflow](http://stackoverflow.com/a/11679993/1813873)

I liked this solution because it takes the \_site directory in the dev branch
and points the master branch to it. This reduces the amount of files remaining
in master and always ensures that it is simple to setup your site anywhere
with the static html files.

I even created a quick publish.sh script that contains the one-liner because
I'm horrible with remember all the commands there.

Hopefully this helps others out as much as it has me. Please feel free to let
me know of any other great solutions you've found to this problem.
