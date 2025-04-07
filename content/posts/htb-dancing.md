---
date: 2025-04-03
draft: false
title: "Dancing"
tags:
  - hacking
  - htb
cover:
  image: title.png
  alt: "Dancing"
  caption: "Dancing"
  relative: false
---

## Intro

Box number 3 in the HTB intro, dancing is about a SMB share which requires no password to connect to, containing a "root" flag. After a short "man smbclient" to look up some of smbclient's REPL commands, I quickly acquired the flag.

![](dancing-1.png)

![](dancing-2.png)

## Remediation

- Don't allow critical data on unauthenticated shares. Set up authentication and authorization for shares in which users are going to put data.