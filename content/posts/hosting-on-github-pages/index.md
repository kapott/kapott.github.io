---
date: '2025-10-02T15:17:11+02:00'
draft: true
title: 'Early days of my not-a-blog'
tags:
 - devops
cover:
  image: sunrise.png
  alt: "Pixel art of a sun setting on a city made out of servers."
  caption: "Early days for the blog!"
  relative: false
---

I won't even write how I did this, as it's on the introduction pages of Github pages. It's not a technical feat to get a "free" blog up and running by using Github and github actions. There is no challenge here, just follow the docs and everything "just works". It's common. It's trite. It's proven.

And that's exactly what reliable technology should be.

Did I learn a lot about git, github, github pages, github actions during this process? No. not really. But being a senior devel-ops-er I did pick up a bit of syntax about how these particular tools and systems work together.

Gitlab pages work similarly. Hosting a static page with Hugo on S3 and putting a CDN in front of it is also a manual equivalent requiring much more work. Github pages just works, it builds my hugo blog with a docker image and deploys it to something, which is backed by a global CDN. It's hassle-free.

### The alternative

If I wanted to go full manual, it'd go something like this:

```
nextjs project in git
  -> git commit
  -> remote git repo 
  -> ci tool 
  -> build static assets using docker image 
  -> push assets to blob store (minio/ceph) 
  -> make bucket publicly accessible 
  -> use something like nginx to serve the files 
  -> put a CDN in front of nginx DNS address
  -> heavily use caching policies.
```

And now it's

```
markdown in git
  -> git commit
  -> remote git repo 
  -> some ci tool template
  -> gitlab/github hosted pages with CDN in front of it
  -> dns record pointing to hosted page
```
Much simpler to maintain.

### Ergo

Now why then, am I writing all of this? Well, first, because I need to learn how to write (trite, right?). And apparently [the process of writing and learning new tech is more interesting to read and watch than endgame fully-polished tutorial-like blogposts](https://austinkleon.com/show-your-work/). So, there's that.

The amount of blogs which start and end on the blogpost "How I created this blog" is astounding. But I get it. Keeping up a blog is hard. Regular timeblocking to write blogs are hard. A blogpost by itself is an entire project, not to be undertaken lightly. You have to write a click-inducing title, research keywords, write a coherent text and make sure people interact with your blog.

So I won't call this a blog. This is a dumping ground of technical ramblings. An excercise in getting my thoughts out there.

I will not research keywords - I might ask chatgpt or claude to sprinkle some in after the article was written. I also won't use AI to write, as that would defeat the purpose of acquiring the skill of writing itself.

So buckle up buttercup! I won't be writing masterpieces from day 1, but I'll sure as hell try to provide you with some nuggets of wisdom.

