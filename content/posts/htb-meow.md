---
date: 2025-04-03
draft: false
title: "Meow"
tags:
  - hacking
  - htb
cover:
  image: title.png
  alt: "meow"
  caption: "Meow"
  relative: false
---

## Intro

Meow is the first box in the hack the box intro series. If I were to just break these boxes and report on them it would be a bit boring. So I'll throw in some advice I'd give for preventing the specific attack vector as well.

After answering the questions the people at HTB set up for meow, it was clear to me - before I fired up nmap - that telnet was open. This box was, as the difficulty stated, indeed very easy.

![Screenshot of root on Meow](meow-1.png "Meow, done.")

## Remediation

Don't use telnet. Just don't. Replace it with `ssh`. Telnet communication in transit is unencrypted and unchecked for inconsistencies. Replacing this with a decent configuration of `ssh` will resolve this issue.

In practice I haven't seen any instances of telnet, so I'm not sure if this would ever translate to a realworld scenario, as any machine running unauthenticated telnet that's connected to the internet would get insta-hacked faster than a windows xp box.