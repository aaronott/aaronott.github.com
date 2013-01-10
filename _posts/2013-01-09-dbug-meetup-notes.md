---
layout: post
title: "DBUG Meetup Notes"
description: "Meetup notes for January 9 in Boulder Colorado."
category: DBUG
tags: [drupal, meetup]
---
{% include JB/setup %}

## Date 2013-01-09

### Favorite modules
* Commerce attributes
* Module filter
* Taxonomy roles
* Services module
* Examples module
* Live Reload

## Topic: JavaScript in Drupal

by Garrett (killtheliterate)

RequireJS

Organizing project in reusable modules is very important. Not seen as much in
Drupal with JavaScript.

Javascript module
  Things are wrapped in a function


JavaScript Module can return something back to the Global Namespace.

Links:
* [http://briancray.com/posts/javascript-module-pattern](http://briancray.com/posts/javascript-module-pattern)
* [http://www.adequatelygood.com/2010/3/JavaScript-Module-Pattern-in-Depth](http://www.adequatelygood.com/2010/3/JavaScript-Module-Pattern-in-Depth)


### Asynchronous Module Definition

Don't polute the global namespace
Javascript loads synchronously which can lead to slower loads.

Drupal has an issue here, you would need to print out the javascript array and
re-weight scripts.

Debugging becomes easier when modularizing code.

AMD Links:
* [https://github.com/amdjs/amdjs-api/wiki/AMD](https://github.com/amdjs/amdjs-api/wiki/AMD)
* [http://www.adequatelygood.com/2010/3/JavaScript-Module-Pattern-in-Depth](http://www.adequatelygood.com/2010/3/JavaScript-Module-Pattern-in-Depth)

AMD is a method not a library.

Once you have an AMD module you need to be able to load it. RequireJS helps
you do this.

RequireJS:
* Encourages modulalr code
* encourages file organization
* leverages AMD
* Offers optimization tools

rjs - RequireJS optimization tool.

### RequireJS & Drupal
RequireJS is a bit tougher to get into Drupal but it can be done.

There are a couple threads around adding the JavaScript to Drupal but there
isn't a large backing.


## Open discussion happens
