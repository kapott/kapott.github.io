---
date: 2024-11-28
title: My blogging pipeline
#cover:
#  image: "images/test.jpg"
#  alt: "alt test"
#  caption: "caption test"
#  relative: false
tags:
  - pipeline
  - removing-friction
  - blogging
  - static-site
---

Everytime I start to blog, I end up with hundreds of unfinished posts. Posts that have text, but are waiting to be SEO analyzed - posts that need a good hero-image - post that need their social cards adjusted for every social network. You know, for shareability! There's just so much friction that goes against my publishing of posts.. I need to remove as much friction as I can. 

This means I need to blog in the editor I already use every day to manage my meetings, notes, thoughts and learnings. [Obsidian](https://obsidian.md/). 

Then, I need a way of processing the markdown files into HTML. This can be done with any static site generator. I chose [Hugo](https://gohugo.io/), as it's a single static binary.

As I don't want to do this every time I write a post, I'll create a pipeline somewhere which will automatically take the markdown files and convert them to html -- and then push them somewhere so they get served as a website.

Nowadays that serving part is quite easy - both [gitlab](https://docs.gitlab.com/ee/user/project/pages/) and [github](https://pages.github.com/) support hosting your static site. For free. And you can even redirect your domain to their hosting solution.

Usually I would then put a CDN with enough POP's in front of the site, but using Gitlab or Github's hosting solution already provides us with a decent CDN, so I'll roll with that.

And the end result? Well, you're reading it - so that means it works ;)

## Setting everything up

### Go and Hugo
Apart from downloading obsidian (or logseq if you want to stay on the FOSS side of things), you'll need go, or [golang](https://go.dev/doc/install) on your system.

```sh
curl -L https://go.dev/dl/go1.23.3.linux-amd64.tar.gz -o ~/Downloads/golang.tar.gz

tar -C /usr/local -xzf ~/Downloads/golang.tar.gz

echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc #or wherever you store your preferences ;)
```

Verify that it works:

```sh
tom@t480: ~/ $ go version
go version go1.23.3 linux/amd64
```

Alright, that works. Now let's download Hugo. Since hugo is a static binary, compiled with golang - I think it's only fitting we also throw it into the hugo bin path. (yeah yeah I know, lazy, but it works)





