---
layout: post
title: "Getting the repl_lag from your MongoDB Replication set."
description: ""
category: MongoDB Tools 
tags: [MongoDB, replSet]
---
{% include JB/setup %}

According to mongodb.org: 

    Replication lag is a delay between an operation on the primary and the
    application of that operation from the oplog to the secondary. 

MongoDB has an eventually consistent model of replication. This is just fine
most of the time. Sometimes though, it's interesting to find out just how far
behind your secondaries are from the master. This can be done by comparing the
optime in the replication status (`rs.status()`) output.

I used to run an rs.status() then grab the optime from the primary and
subtract the optime of the secondary node I was interested in. This is a pain and too
time consuming. For this reason I wrote the following command that can be run
from the mongo commandline.

    rs.repl_lag = function () {
      var s = db._adminCommand("replSetGetStatus");
     
      // if this is primary, go no further.
      if (s.myState == 1) {
        return 0;
      }
     
      var mytime = 0;
      var primarytime = 0;
     
      for (var i in s.members) {
        if (s.members[i].self == true) {
          mytime = s.members[i].optime.t;
        }
     
        if (s.members[i].stateStr == "PRIMARY") {
          primarytime = s.members[i].optime.t;
        }
     
        if (mytime > 0 && primarytime > 0) {
          break;
        }
      }
     
      return (primarytime - mytime) / 1000;
    }

To use this, call mongo using the --shell parameter:

    mongo --shell repl_lag.js

Then from the prompt all you need to type is `rs.repl_lag()` and the command
returns the number of seconds behind the primary that the current node is.
You'll notice that if we are on the primary, we simply return 0 since it can't
be behind itself.

The script can be downloaded from
[Gist](https://gist.github.com/aaronott/5045018)
