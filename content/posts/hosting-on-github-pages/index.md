---
date: '2023-04-02T15:17:11+02:00'
draft: true
title: 'Hello World, I’m Live! GitHub Pages and the Art of Not Screwing Up'
tags:
 - devops
cover:
  image: sunrise.png
  alt: "Pixel art of a sun setting on a city made out of servers."
  caption: "Early days for the blog!"
  relative: false
---

Alright, gather ‘round, fellow code wranglers, because I’m about to regale you with the epic tale of how I set up a blog using GitHub Pages. Spoiler alert: it’s about as thrilling as debugging a misplaced semicolon, but stick with me—it’s got a happy ending.

I’m not going to bore you with a line-by-line tutorial. Why? Because the GitHub Pages docs are basically the “Hello, World!” of web hosting guides. If you can survive a git push without triggering a merge conflict, you can get a free blog up and running faster than you can say “404: Motivation Not Found.” No PhD in Kubernetes required—just follow the steps, and boom, your Hugo blog is live, courtesy of a Docker image and some CDN magic. It’s so easy, I almost felt guilty for not struggling more. Almost.

Now, don’t get me wrong—this isn’t some grand technical odyssey. It’s not like I was wrestling with a segfault in C or trying to make sense of a 500-line regex. GitHub Pages just works. Like, scarily well. It’s the kind of reliable tech that makes you suspicious, like when your CI pipeline passes on the first try. You know what I mean—you squint at it, waiting for the inevitable “build failed” email. But nope, GitHub Pages just builds your site, slaps it on a global CDN, and calls it a day. It’s the DevOps equivalent of a golden retriever: loyal, dependable, and doesn’t chew up your commits.

Did I become a GitHub Actions wizard or unlock the secrets of git rebase in the process? Nah. As a senior DevOps-er (cue the dramatic air quotes), I picked up a few bits of syntax trivia, like how GitHub Pages and Actions hold hands to make your blog go live. It’s not life-changing, but it’s nice to know, like discovering a new VS Code shortcut or finally understanding why your Dockerfile needs that one weird RUN command.

For comparison, GitLab Pages is like GitHub Pages’ cousin who shows up to the family reunion with the same potato salad recipe. It’s fine, it works, but it’s not winning any originality awards. And if you’re feeling extra masochistic, you could manually host a Hugo site on S3 with a CDN out front. But that’s like writing your own ORM instead of using an existing one—sure, you could, but why punish yourself when GitHub Pages does the heavy lifting? It’s like choosing to cat a 10,000-line log file instead of using grep. Work smarter, not harder, folks.

So here I am, blogging away on my shiny, hassle-free, CDN-powered slice of the internet. It’s not the stuff of developer legend, but it’s reliable, it’s fast, and it didn’t make me cry into my terminal. In a world of “works on my machine” chaos, that’s practically a love letter from the tech gods. Now, if you’ll excuse me, I have some commits to push and a coffee to debug. ☕

