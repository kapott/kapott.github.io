---
date: 2025-04-03
draft: false
title: "HTB Starting point"
tags:
  - hacking
---

Hack the box seemed like a good place to start. I've had the account for a while, but never really did anything with it. Let's change that. 

Usually you just have to submit the user and root flags and you'll get rewarded for a box. But because I didn't do any boxes yet, they laid out a tour for me. The tour consists of some tutorial-like boxes you have to own - labeled "very easy". Let's take the tour.

## Meow

After answering the questions the people at HTB set up for meow, it was clear to me - before I fired up nmap - that telnet was open. This box was, as the difficulty stated, indeed very easy.

![Screenshot of root on Meow](meow-1.png "Meow, done.")

## Fawn

This one was a bit more annoying. It's about a FTP server. Running `nmap`, as well as connecting to it through the `ftp` command give me the login prompt and version 3.0.3 for vsFTPd.
One of the required answers for the machine is "From your scans, what version is FTP running on the target?". Which is 3.0.3 - yet the answer is not accepted. You need to include the daemon name as well, in front of the version - a minor gripe.

We do get the flag, however, as the machine allows anonymous ftp. `wget ftp://anonymous:anonymous@<machine ip>/flag.txt`
Turns out this is the root flag.

![](fawn-1.png)

## Dancing

Dancing is about a SMB share which requires no password to connect to, containing a "root" flag. After a short "man smbclient" to look up some of smbclient's REPL commands, I quickly acquired the flag.

![](dancing-1.png)

![](dancing-2.png)

## Redeemer

As this is another very easy box, let's run basic recon against it..

![](redeemer-1.png)

Alright, a redis server. Worked with tons of these in the past, but usually from a codebase perspective - and as a caching mechanism for hot data. I still remember `redis-cli` but have no recollection of any of the flags the cli takes. 

We could dive into the `man` page, but I always think that's a bit too verbose for short tasks I want to perform. So I'll just input a flag that might be helpful, but also might be wrong. If it does what I think it does, we'll get help from the cli itself, if it doesn't, the cli errors out and shows us what the correct flags are.

![](redeemer-2.png)

Or, you know, it could be a correct flag which I abused so I still get the error-out message with correct flag usage. Still saves time over trawling through man pages.

One of the key features of this redis instances is that it doesn't require authentication. I remember this being an issue "back in the day" for both redis and mongodb. And the same goes for this instance.

So a quick `redis-cli -h $target` later, we collect some info with the `info` command, list the available databases with `config get databases` - after which I'd like to know what database has some data in it. Something I can figure out by looking at the keyspace; `info keyspace`.

It seems `db0` has 4 keys in it. So, `select 0` for db0. Show me the names of the keys: `keys *`. And then I only need to `get flag`.

![](redeemer-3.png)

I look at the other keynames, wondering if there's an easter egg in there - but alas, just random hexstrings. Redeemer, done.

## Explosion

Initial recon shows that this is, very obviously, a windows machine:

![](explosion-1.png)

Let's try to connect to it with `xfreerdp /v:$target`.

![](explosion-2.png)

Password certainly expired. Interesting. Let's try to open op a gui connection. 
The HTB pwnbox comes loaded with a program called `Remmina`, which is a great choice for things like RDP, VNC and other sort of connections which might require a gui.

Let's connect. It asks for a username. The default username for any windows machine would be "Administrator" - and as it seems we can use that to succesfully establish a gui connection - without entering a password.

As you can see, the flag is right there on the desktop..

![](explosion-3.png)

Explosion, done.

## Preignition

Let's start with our initial recon.

![](preignition-1.png)

The questions for the box point towards a "next step" of directory bruteforcing with `gobuster`. Let's follow the lead. What does running the command tell us about using the command?

![](preignition-2.png)

After some googling I found out that Daniel Miesler's Seclist repository is actually included under `/opt/useful/`. So I created a symlink of `/opt/useful/seclists/Discovery/Web-Content/common.txt` into my home directory, and ran `gobuster` with the `-x php` flag, as that was hinted to in the questions.

![](preignition-3.png)

Interestingly enough, we have a http 200 on a file called admin.php. This means we can succesfully complete a webrequest to it.

After opening the url in the webbrowser (http://{target}/admin.php), I get a login screen.

![](preignition-4.png)

At this point, I could bruteforce the application. Or I could just try my luck by manually entering usernames. Like admin/admin for example.

![](preignition-5.png)

Preignition, check!




