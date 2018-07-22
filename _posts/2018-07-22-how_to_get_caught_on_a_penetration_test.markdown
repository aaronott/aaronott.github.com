---
layout: post
title:  "How to get caught on a web application penetration test"
date:   2018-07-22 12:34
---

**Why would you want to get caught?**

There are a number of reasons why you would like to get caught on a penetration test. For instance, you might be testing the ability of the SOC to detect and respond to attacks. Testing the current toolset that is in place to monitor the environment.

The other thing to think about here, if you know ways to get caught, you can reverse these and find ways not to get caught.


**nmap -T5 -A**

One of the early steps in penetration testing is to fingerprint the servers and services used to run the application. As an attacker, we want to know if there are any other vectors that can be used to attack the environment. nmap is a good standard tool used for mapping ports on a server. The -T flag allows the runner to choose the speed at which probes are sent to the server and specifying level 5 means that nmap is going to send multiple probes in parallel and allow only a 5ms TCP delay before sending again. This, as you can imagine, can be very noisy on the network. The -A is an aggressive scan, this will run all the associated nmap scripts on each of the ports/services found on the system.

This type of scan should be noticed by an IDS and alert the SOC or perform some action such as throttling the replies back to the sender.

**dirbuster or dirb with large lists running at top speed**

dirbuster and dirb are essentially the same tools with the major exception being GUI vs CLI. dirbuster is a java application which opens a Graphical User Interface allowing a user to simply fill out the form and start scanning while dirb is a command run just from the command line to accomplish the same task.

These tools are used for directory enumeration and take a wordlist as input. They then send a request to the server appending the word from the wordlist to the URL and checking to see the return code. If the return comes back as a 200 or 302 it might be interesting to the attacker.

The issue is that for each request being sent to the application, the server has to build and return a response. Many times this means calling the filesystem and possibly making one or more calls to the database backend. A large number of requests can start to bog down a system due to memory and CPU usage. This can arguably be a finding in itself since it is creating a DoS situation, but it certainly starts setting off alarm bells for monitors of CPU and Memory usage.

The other issue is that for each request made, a log entry is created, generally capturing the request URI and IP address of the requestor. While this style of testing can be launched from a tor network, ensuring requests coming from multiple IP addresses, it still has raised alerts allowing someone to take action.

**hydra or medusa for brute force passwords**

Brute-forcing a list of passwords is a technique used to try and gain access to the backend of a system. Like the above enumeration technique, brute-force password guessing has its flaws. It too sends multiple requests to the web server at a high rate guessing passwords from a wordlist. This will also raise alerts due to CPU and memory usage.

**Nessus or openVAS scan**

Running a vulnerability scan on a site sets off quite a few bells and alerts as well. This has much the same effect as the brute force passwords, enumeration, and the nmap previously mentioned since these tools will try and scan the site looking for known vulnerabilities. While a vulnerability scan isn't the same as a penetration test, it is sometimes used at the beginning to get a baseline of what can be easily found then digging continues from there.

**Honeyfiles and Honeyfields**

While honeyfiles and honeyfields aren't tools used by a penetration tester, they could be used as a defense mechanism in the application. The idea behind these techniques is that if an attacker or tester were to come across the honeyfile and find information they think useful to further attacks could be based on this information leading the attacker away from the real information. Likewise, honeyfields are added to forms and are used to throw out posts coming from an automated script. The honeyfield is generally a form field hidden from normal users and should not be filled out, but given a semi-standard field name so when a script comes across the form, it will automatically fill in the field and when submitted the form information will be flagged as coming from an abnormal user.

**Summary**

Notice all the ways mentioned above cause quite a bit of noise. If during a penetration test, the SOC was not notified of your activities and they didn't notice you doing the above, that is something that needs to be looked into and reported on.

Obviously, there are many other ways to get caught and some ways to cover your tracks even on the above tactics to make it more difficult to defend, I simply wanted to give a few examples to get started.
