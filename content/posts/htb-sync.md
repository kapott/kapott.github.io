---
date: 2025-04-03
draft: false
title: "Sync"
tags:
  - hacking
  - htb
cover:
  image: title.png
  alt: "sync"
  caption: "sync"
  relative: false
---

Sync. The process of synchronizing. I wonder what this box will present to me. Let's find out.

## Recon

![](sync-1.png)

Ah, `rsync`. The sysadmin's preferred alternative to `scp` for large files and backups. It supports a myriad of options - incremental transfer being one of them. Great for spotty connections, backup jobs and large file transfers.

![](sync-2.png)

A cursory glance at the shares we may access without supplying any user or password quickly reveals the flag. That was.. unexpected.

## Remediation

*Access control*

Rsync uses a transport method. It used to be the `rsync` protocol itself, but that was pretty insecure. Nowadays that's `ssh` by default. Set up access controls using public-private keypairs and make sure the access controls on the remote host are in order. You shouldn't ever run into this misconfiguration. It's 2025 people.