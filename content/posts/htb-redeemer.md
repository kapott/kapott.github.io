---
date: 2025-04-03
draft: false
title: "Redeemer"
tags:
  - hacking
cover:
  image: title.png
  alt: "Redeemer"
  caption: "Redeemer"
  relative: false
---

## Intro

Box number 4 in the hack the box "starting point" trail. As this is another very easy box, let's run basic recon against it..

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

## Remediation and tips

- Don't run an internet-facing redis instance unless you know what you're doing (looking at you, cloud people!).
- Make sure you configured authentication and authorization to redis.
- (Probably) upgrade your redis version _or_ take a good hard look at the redis configuration you migrated as you upgraded redis. 

Newer versions of redis come with a default configuration which puts the server in a protected mode, where it only answers requests from loopback _as long as it detects the default configuration_. 

If you overwrite the default configuration, it accepts it's state as being "configured" and your possibly-ancient configuration will override the new secure-by-default settings.