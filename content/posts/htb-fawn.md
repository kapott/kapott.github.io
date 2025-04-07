---
date: 2025-04-03
draft: false
title: "Fawn"
tags:
  - hacking
  - htb
cover:
  image: title.png
  alt: "Fawn"
  caption: "Fawn"
  relative: false
---

## Intro

Second box in the intro series. Another cakewalk, although one questions for the box was a bit more finnicky. 

This box is about a FTP server. Running `nmap`, as well as connecting to it through the `ftp` command give me the login prompt and version 3.0.3 for vsFTPd.

One of the required answers for the machine is "From your scans, what version is FTP running on the target?". Which is 3.0.3 - yet the answer is not accepted. You need to include the daemon name as well, in front of the version - a minor gripe.

We do get the flag, however, as the machine allows anonymous ftp. `wget ftp://anonymous:anonymous@<machine ip>/flag.txt`
Turns out this is the root flag.

![](fawn-1.png)

## Remediation

FTP servers are still around and in use. Downloading the latest ubuntu image? That'll be unauthenticated FTP (probably). Correctly configuring FTP is, as far as sysadmin tasks go, quite easy.

So, first things first - being that the flag is our "loot" in this scenario, I'd imagine that this would be the so-called "valuable information". If we had to secure this flag so we couldn't touch it then I suggest the following:

- Disable anonymous access to the FTP server

Disabling anonymous access, if possible, would implicitly force access to the file through accounts that would be authorized to access the file.

- Use a secure alternative to FTP like FTPS or SFTP

FTP is a plaintext protocol, and as such it can be intercepted and altered in-transit. To prevent this, you should add at least a layer of encryption atop of it, like FTPS does.

Alternatively you can use `openssh` to set up an SFTP server with some more fine-grained security controls and a more secure handshake mechanism.
