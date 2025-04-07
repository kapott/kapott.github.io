---
date: 2025-04-03
draft: false
title: "Pre-ignition"
tags:
  - hacking
  - htb
cover:
  image: title.png
  alt: "Pre-ignition"
  caption: "Pre-ignition"
  relative: false
---

## Intro

Another "very easy" box in the "starting point" trail by Hack the Box - number 6. Let's start with our initial recon.

![](preignition-1.png)

The questions for the box point towards a "next step" of directory bruteforcing with `gobuster`. Let's follow the lead. What does running the command tell us about using the command?

![](preignition-2.png)

Alright, there are a lot of useful flags there.

After some googling I found out that [Daniel Miesler's Seclist](https://github.com/danielmiessler/SecLists) repository is actually included under `/opt/useful/`. So I created a symlink of `/opt/useful/seclists/Discovery/Web-Content/common.txt` into my home directory, and ran `gobuster` with the `-x php` flag, as that was hinted to in the questions.

![](preignition-3.png)

Interestingly enough, we have a http 200 on a file called admin.php. This means we can succesfully complete a webrequest to it.

After opening the url in the webbrowser (http://{target}/admin.php), I get a login screen.

![](preignition-4.png)

At this point, I could bruteforce the application. Or I could just try my luck by manually entering usernames. Like admin/admin for example.

![](preignition-5.png)

Preignition, check!