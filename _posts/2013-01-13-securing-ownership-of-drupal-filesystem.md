---
layout: post
title: "Securing ownership of Drupal filesystem."
description: ""
category: drupal
tags: [drupal, security]
---
{% include JB/setup %}

There was a security vulnerability found in Drupal 7.0 - 7.15 where a Drupal
site could be hijacked given the wrong permissions to the settings.php file.
Read more about it here
[http://drupal.org/node/1815912](http://drupal.org/node/1815912) if you are
still running Drupal 7.15 or less, upgrade is highly recommended.

This vulnerability relies on the settings.php file being writable by the web
server. One way to ensure that these types of vulnerabilities don't effect your
site is to set proper permissions to your install.

On my server, I will normally create a dev group and assign myself and other
developers to that group. Then I set the permissions as follows:

Start with all files :

    sudo chown -R nobody:dev /path/to/drupal

We set the owner to all files to nobody. This is a special user in linux and
will ensure that no unnecessary permissions are granted to any of the files in
the Drupal install.

Next we set directory and file permissions:

    // start with the files
    sudo chmod -R 664 /path/to/drupal
    // now set the directories
    sudo find /path/to/drupal -type d -exec chmod 775 {} \;

Just a few final touches to make sure Drupal is happy with how things are set.

    // set the sites/default/files directory ownership
    // www-data is the owner on most debian based systems,
    // if you use a redhat based distro, you may need to set 
    // the owner to 'apache'
    sudo chown -R www-data /path/to/drupal/sites/default/files

And just for a bit more security let's make the settings.php file read-only.

    sudo chmod 444 /path/to/drupal/sites/default/settings.php

That should do it, permissions should now be set such that anyone in the dev
group will be able modify files as needed for development purposes but the
webserver will not have permission to modify files leaving the install a bit
more secure.

This whole script can be be downloaded [here](https://gist.github.com/3908003).
