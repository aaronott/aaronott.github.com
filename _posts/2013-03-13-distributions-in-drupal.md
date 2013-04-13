---
layout: post
title: "Distributions in Drupal"
description: "Using distributions can be great for those learning to build with Drupal."
category: drupal
tags: [Drupal, BLUG]
---
{% include JB/setup %}

I recently gave a presentation on Distributions (or Installation Profiles) at
the local Drupal Meetup and touched at a higher level about what these can do
for you.

Starting out in Drupal some time ago I was pretty excited. I downloaded
Drupal, installed it and then... well I had that feeling "Ok now what?" I
wasn't really sure what all could be done with Drupal or what I wanted to do
with Drupal so kind of left it at that for a bit. Luckily I was using it at
work for a different project where we built custom module after custom module
and added them to our platform.

I think quite a few people feel this way. They hear about Drupal from someone
who may be excited about it "Hey you're building a such-and-such site? You've
gotta checkout Drupal, it would be perfect for that." So they go home,
download and install Drupal and say to themselves... "Ok now what?".

I think Distributions are a great place to start. First off, you get much more
functionality than the out-of-the-box installation and you can choose a
distribution that is close to what you are trying to build. One of the biggest
benefits I find of distributions is that you can install it then take a look
at all the modules used to create the great functionality you are looking for.
This is a great learning tool in that you can see what modules work well with
other modules and find the answer to just how did they build that super cool
slideshow?

During the presentation we walked through four different distributions with
varying levels of complexity. We started off with a pretty simple distribution
and worked up to a very well polished distribution that can be used with very
little customization needed.


## Jumpstart

The first distribution we looked at was the Jumpstart distribution which is
pretty simple by design. The purpose of this distribution is to have a
starting point to build sites. Instead of requiring that you download and
install Drupal, then download Views and some development modules separately,
this Distribution takes care of that for you.

<img src="/assets/images/jumpstart_ss.png" />
This is a good example of a personal distribution that can be created to have
a good jumping off point to create your projects. There aren't any added
features with this distro so it really is just something to use while at the
beginning of a new project.

[Jumpstart project page](http://drupal.org/project/jumpstart)

## OpenPublish

OpenPublish aims to bring all the required tools for building a publishing
centric site such as a news site. While there is no sample content, this
distribution adds a couple different content types for Blog post, photo
galleries, and videos.

<img src="/assets/images/publish_ss.png" />

This distribution includes features exported using the features module
allowing for the distribution to create views and other pieces out of the
box. Features in this distribution are used to build the different content
types and modify the users profiles as well as creating a default view for
content.

A piece we didn't touch on but that is interesting is the fact that this
distribution also includes the apps module. This allows the site builder to
download prepackaged fully functional applications to add even more
functionality to the site.

[OpenPublish project page](http://drupal.org/project/openpublish)

## Drupal Commons

We then moved on to the great Drupal Commons distribution. This distribution is
created to include a community site. Out of the box this distribution allows
for the creation and display of events, subscription to different groups and
even a wiki for each group. There are many other features that are included
in this distribution that make customization easier on the site builder. For
instance this distribution uses panels for layout which allows you to drag and
drop your displays to different sections on the screen. The appearance section
includes quite a few customizations that can be made to the layout and css of
your site.

<img src="/assets/images/commons_ss.png" />

This is the first distribution we looked at that also installed sample content
which gives the site builder a much better idea of the layout and flow of the
site. This is a great distribution to download an look at if you are looking
at adding "Hot Topics" to your site. It uses the radioactivity module to keep
track of those stories and articles that people want to to read on your site.

[OpenPublish project page](https://network.acquia.com/downloads/drupal-commons)

## Commerce Kickstart

Finally we installed and looked at the Commerce Kickstart distribution. This
distribution was built as an example of what can be done with the Commerce
module and is a great place to start if you are looking at building an online
commerce store. Included in this distribution is everything you will need
setup your store, take payments and ship your product. While this distribution
doesn't include any apps, it does make good use of the Features module and
builds many different content types and views to display your products.

<img src="/assets/images/commerce_ss.png" />

Along with sample content, this distribution also has a great help section
that include videos and step-by-step how-to's.

Outside of commerce, it is a great example of what can be done to customize
the installation process to fit the needs of your distribution.

[Commerce Kickstart project page](http://drupal.org/project/commerce_kickstart)

## Conclusion

Installing distributions is a great place for those that are new to Drupal and
would like to get into building different sites with it. They allow new (and
seasoned) users the opportunity to dig into the pre-packaged site and figure
out how the features and functionalities are built.

For those who have been building Drupal sites for a while, it will give them
ideas on creating a distribution allowing for a good starting point to cut
down the level of work they will need to complete on each of their projects.

Let me know of other distributions that you've run into that are good for
learning or that do something really cool.
