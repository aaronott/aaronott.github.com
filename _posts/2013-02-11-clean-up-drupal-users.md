---
layout: post
title: "Clean up Drupal Users"
description: "Clean up Drupal users with Drush"
category: drupal 
tags: [drush, drupal]
---
{% include JB/setup %}

Many times when deploying a Drupal site from Development to Production, there
is the desire to clean things up in order to boost security. One thing that
should not be forgotten is the users that are allowed to login to the site. If
you have a deployment where everthing happens on the development or staging
server and is pushed to production, it would be a good idea to not allow any
users to login directly to production.

There are a couple ways to go about this, the first is by logging in as the
admin user and manually blocking all users. This method is fine if there are
only a few users, but it also becomes tedious and if there are more than a few,
very time consuming.

Another way to do it would be to login to the database and run something like:

    UPDATE users SET status = 0 WHERE uid > 1;

Again, this method works just fine, but since we are inside a Drupal instance,
we can let Drush do the work for us. I've created a short script that can be
used for this purpose and all it does is block every user except the
Administrator and Anonymous users. The reason we block the user instead of
canceling the user is we might like blog posts to remain tied to the user so
they would get credit on the by-line otherwise all content is re-assigned to
the Anonymous user.

This is what the script looks like:

    #!/usr/bin/env drush
    <?php
    #
    # This script removes all drupal users with uid > 1 (e.g., skips
    # admin user) and reassigns their content to anonymous.
    #
    
    // check if we can bootstrap
    $self = drush_sitealias_get_record('@self');
    if (empty($self)) {
      drush_die("I can't bootstrap from the current location.", 0);
    }
    
    // we don't want to say yes each time.
    drush_set_context('DRUSH_AFFIRMATIVE', TRUE);
    
    $result = db_query("SELECT name from {users} WHERE uid > 1");
    
    foreach ($result as $user) {
      drush_invoke('user-block', array($user->name));
    }

Download the script from: [https://gist.github.com/aaronott/4760022](https://gist.github.com/aaronott/4760022)
