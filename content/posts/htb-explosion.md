---
date: 2025-04-03
draft: false
title: "Explosion"
tags:
  - hacking
  - htb
cover:
  image: title.png
  alt: "Explosion"
  caption: "Explosion"
  relative: false
---

## Intro

Being box number 5 in the hack the box "starting point" introduction, it's an easy machine. Initial recon shows that this is also, very obviously, a windows machine:

![](explosion-1.png)

Let's try to connect to it with `xfreerdp /v:$target`.

![](explosion-2.png)

Password certainly expired. Interesting. Let's try to open op a gui connection. 
The HTB pwnbox comes loaded with a program called `Remmina`, which is a great choice for things like RDP, VNC and other sort of connections which might require a gui.

Let's connect. It asks for a username. The default username for any windows machine would be "Administrator" - and as it seems we can use that to succesfully establish a gui connection - without entering a password.

As you can see, the flag is right there on the desktop..

![](explosion-3.png)

Explosion, done.

## Remediation

- Never ever run an Administrator account without password.
- Do not expose an RDP connection to the internet directly. If you must:
  - Make sure you have a very secure password and a 2FA solution attached. 
  - Make sure that the server is up to date and has a very short patch-cycle.
- A better way to run RDP is to put it behind a network segment that requires a VPN connection to get in. That way there is already  pre-established trust-trail to trace - and an audit trail if things should go sideways.