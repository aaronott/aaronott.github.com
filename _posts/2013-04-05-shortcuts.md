---
layout: post
title: "Super shortcuts to useful pages"
description: "Creating shortcuts to pages you use often, adding to your tool
belt"
category: 
tags: [tools,simplify]
---
{% include JB/setup %}

Bookmarks are great for taking you back to a page that you've been to before,
but what about those pages that you frequent daily. I find myself heading on
over to [php.net](http://php.net) or to
[api.drupal.org](http://api.drupal.org) quite a bit to look up different
functions.

The issue that I have going directly to these pages is that I have to type in
the url into the browser, then search for the function I want. I suppose I
could type in the function into Google (or the browser search) and click on
the first entry that comes back, but I like making thinks a bit easier for me.
Imagine you are using the
[date](http://us.php.net/manual/en/function.date.php) function and can't
remember if you need to use 'r' or 'c' in your function. Using the regular
search way, you could type in php date in the search field, or you could head
on over to [php.net](http://php.net) and search there. Wouldn't it be easier
to simply type php date in your browser bar and have it take you directly to
that page?

<!--more-->

Google Chrome allows you to do just that by setting up your own custom search
(even though you're not really searching). If you are in the Chrome browser
now, you can try it out.

Click the wrench 'Customize' button and click on Preferences. A little more
than half way down, you will find the 'Search' section with a button labeled
'Manage Search Engines...'. Clicking on this brings up an overlay with two
sections, 'Default search options' and 'Other search engines' for our case we
are interested in the second one. Scroll to the very bottom where you will
find a row of three text entry boxes.

In the first box enter php.net - this is the label of your search so you can
call it whatever you want.

Second box php - this is the shortcut text that will invoke the search engine

Third box http://us.php.net/manual/en/function.%s.php - when we search for
date on the php.net page, we notice it takes us to
http://us.php.net/manual/en/function.date.php so if we use the %s as our
string placeholder, we only need to type in the name of the function to get
that url.

Now you should be able to use php date on your own browser, and yes you can
search for any of the other php functions as well.

Here are a couple more of my shortcuts:

    Drupal Projects | pr | http://drupal.org/project/%s
    D7 API Lookup | d7 | http://api.drupal.org/api/search/7/%s
    D6 API Lookup | d6 | http://api.drupal.org/api/search/6/%s
    Drupal Code | dc | http://drupalcode.org/project/%s.git
