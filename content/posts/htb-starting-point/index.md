---
date: 2025-04-02
draft: false
slug: starting-point
title: "Hack The Box: Starting point"
tags:
  - hacking
  - htb
cover:
  image: title-2.png
  alt: "Starting point"
  caption: "Starting point"
  relative: false
---

Alright, fellow terminal ticklers, let’s get real for a second. There’s something oddly comforting about admitting you don’t know it all, especially when you’ve spent decades building systems, breaking them, and then rebuilding them like a caffeine-fueled Sisyphus. 

It’s humbling, like realizing your hello world script still has a syntax error after 20 years in the game. So, buckle up for a tale of rediscovery, some old-school sysadmin vibes, and a dive into Hack The Box—because sometimes you gotta ditch the YAML and get back to breaking stuff.

I don’t strut into meetings thinking I’m the senior DevOps-er with a capital “S.” But you know what? I often leave realizing I kinda was. Not because I’m chasing clout or wearing my certifications like a tech bro’s NFT collection, but because the stuff I take for granted—TCP/IP handshakes, filesystem permissions, sniffing packets like it’s 2003—is apparently becoming vintage. 

These days, it’s all abstractions and platforms, like the industry decided to pave over the gritty details with a shiny Kubernetes cluster. 

I’m not saying I’m the last sysadmin standing, clutching a dog-eared copy of the man page for iptables, but sometimes it feels like I’m the only one at the party still reading the manual instead of copy-pasting from Stack Overflow.

And yeah, maybe that makes me sound like a grumpy old sysadmin, waving my fist at the cloud and muttering, “Learn TCP/IP before you kubectl apply your life away!” 

Guilty as charged. 

But instead of yelling at the kids on my digital lawn, I decided to channel that energy into sharpening my skills. Not by tweaking another CI pipeline or wrestling with Terraform’s latest tantrum, but by diving back into something raw, something real. Enter Hack The Box (HTB), the nerdiest playground this side of a hello world script.

### Hack The Box: My Return to the Terminal Trenches

I’ve had an HTB account forever, like that one GitHub repo you forked in 2018 and forgot about. I’d poked around, clicked some menus, and then ghosted it faster than a bad npm install. But this time, I was all in. If I was going to swap my builder hat for a breaker hat, I needed a proper sandbox to smash things in. HTB felt like the right vibe—like a digital escape room for people who think nmap is a personality trait.

The HTB folks clocked me as a newbie (rude, but fair) and nudged me toward a guided tour: a curated path through their “Very Easy” boxes, served up in three tidy batches. This wasn’t some gauntlet of hacker glory—it was more like a pop quiz on the fundamentals, a “hello world” for breaking systems. Here’s the lineup for Batch 1, the “Strong Foundation” crew:

1. [meow](/posts/htb-meow "meow")
2. [fawn](/posts/htb-fawn "fawn")
3. [dancing](/posts/htb-dancing "dancing")
4. [redeemer](/posts/htb-redeemer "redeemer")
5. [explosion](/posts/htb-explosion "explosion")
6. [preignition](/posts/htb-preignition "preignition")
7. [mongod](/posts/htb-mongod "mongod")
8. [synced](/posts/htb-sync "sync")

Were they hard? Nah. Were they supposed to be? Also nah. These boxes were like the tutorial level in a video game—think “press X to jump” but for hacking. Straightforward, but sneaky enough to make you think, “Oh, right, I do remember how to exploit a default config.”

### What I Took Away (Besides a Nostalgia High)

These boxes were like digital postcards from the good ol’ days, back when we debugged login forms by hand and cracked services because we knew their default passwords were “admin123” (don’t judge, we’ve all been there). 

It was like stumbling across a badly written old bash script in a forgotten directory—nostalgic, grounding, and a little humbling.

For someone like me, who’s been lost in the DevOps wilderness of Terraform loops and CI pipelines that fail because someone sneezed on the YAML, these HTB challenges were a homecoming. 

No orchestration layers, no feature flags, no “works on my machine” excuses. Just you, an IP address, a port, and the quiet thrill of asking, “What can I break here?” It’s the hacker equivalent of a campfire and a good playlist—pure, unfiltered, and no 502 Bad Gateway in sight.

Hacking on HTB felt like dusting off my sysadmin roots, like firing up vi instead of VS Code just to feel something. It reminded me why I fell in love with systems in the first place: the puzzle, the curiosity, the moment when you crack a box and think, “I’m basically Neo from The Matrix, but with worse posture.” 

So, here’s to rediscovering the joy of breaking things on purpose, to hello world scripts that spark something bigger, and to never letting the cloud make you forget how to read a packet capture. Now, if you’ll excuse me, I’ve got figure out how to read my mail with emacs whilst debugging my coffee. ☕