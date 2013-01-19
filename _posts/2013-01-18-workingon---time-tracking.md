---
layout: post
title: "workingon   Time tracking"
description: "Keeping track of time for different projects."
category: 
tags: [productivity]
---
{% include JB/setup %}

Since starting with AppliedTrust and sometime before that as well, I've found
the need to track time for different projects. I've used a number of methods
including pencil and paper, online applications, applications over xmpp that I
can connect with through IM even desktop applications.

One thing I found was that it is super easy to start the timer, then get off
onto another project totally forgetting to mark the time when you ended the
previous project. This leads to very inaccurate time tracking as you are trying
to rely on your memory, "Hmmm, how long have I been working on this?"

I took a script that I've written over and over to learn different languages
and wrote it out in PHP real quick. I didn't really want to spend much time
working on the script it self, really I wasn't sure that I'd even really use it
at all. I called WorkingOn and started to use it.

To start an activity I would simply type in

    workingon start "Project X"

this writes a temporary file with a timestamp and the project name so I can
keep track of what I've been working on and how long.

If at anytime I need to see what project I'm tracking time against I can type
in

    workingon current
    
and this would return something like

    Project X since 10:52:06 [1h13m]
    
This is a nice message telling me everything I need to know, what I'm working
on, when I started it and just for ease, how long I've been working on it.

When I get done I can type

    workingon end
    
and a message like the following will be displayed

    Ended: Project X after 1h15m27s

I built in a limitation that will allow me to only track a single task at a
time. I think this is ideal since you can't focus all your energy on more than
one project at a time.

### Laziness 
So I ran with this for a while and realized a few things. Number
one, I got sick of typing out the full name `workingon start` or `workingon
current` so I created aliases

    alias wo='workingon'
    alias woc='workingon current'
    alias wor='workingon report'
    alias wos='workingon start'
    alias woe='workingon end'

Now I can simply type `wos "project X"` and git things started and a quick
`woc` will tell me what I'm currently workingon.

This was progress but another thing I noticed is, like other applications, I
would forget to change the clock and would find that I'd type `woc` and it
would say I'd been working on an application for 6hours when really I'd worked
on a number of projects during that time.

### Reminders 
I decided that reminders are a good thing so I built them using
cron on my system. I'm using a linux system so I created a cron to run every 20
minutes and run a script called reminder.sh. This script used notify-send to
popup a message that would say "Hey, what are you workingon?"

This worked for a bit but I figured, this could be better, so I added the
output from `woc` to the script so I could say, you are currently working on
Project X for 1h15m.

    #!/bin/sh

    CURRENT=`/usr/local/bin/workingon current`

    /usr/bin/notify-send "What are you WorkingOn?" \
      "Check your time.\n $CURRENT" \
      -i /usr/share/pixmaps/gnome-set-time.png

My cron looks like the following:

    */20 7-17 * * 1-5 DISPLAY=:0.0 /usr/local/bin/reminder.sh

### Anywhere 
So I found that I would be on different computers through out the
day and I would like to track my time across them. Easy enough, since the
database is simply a flat file, I put it in a dropbox that is connected across
my computers so I can now track time on all my devices.


The full script can be found [here](https://github.com/aaronott/WorkingOn-CLI)

I hope this helps someone else as much as it's helped me.
