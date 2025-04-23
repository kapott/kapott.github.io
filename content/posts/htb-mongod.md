---
date: 2025-04-03
draft: false
title: "Mongod"
tags:
  - hacking
  - htb
cover:
  image: title.png
  alt: "mongod"
  caption: "mongod"
  relative: false
---

Mongod - referring to MongoDB, a noSQL database for storing unstructured data. I've maintained and scaled a couple of these clusters for so-called "big data" processing in the past. It used to have insecure-by-default config settings which would allow connections from `0.0.0.0` on port `27017`. Unauthenticated. Unauthorized.

The documentation back then told you to set up access controls and bind the database to a specific interface, as the default was 'accept connections from anywhere' - but who reads the documentation when you can just `docker run`?

It's known for leaking PII data from marketing companies [all over](https://www.zdnet.com/article/mongodb-server-leaks-11-million-user-records-from-e-marketing-service/) [the](https://www.hipaajournal.com/5-million-records-exposed-due-to-unsecured-mongodb-marketing-database/) [internet](https://techhq.com/2019/05/massive-mongodb-database-leak-a-data-security-wakeup-call/).

Machines that shouldn't have direct ingest from the internet anyway. I digress. Let's fire up `nmap` and see what this machine is doing.

## Recon

![](mongod-01.png)

That's a very old mongodb version. Let's see if we can directly connect to it...

![](mongod-02.png)


Ah. It's so old we have to download downgraded tooling just so we can connect to it.
![](mongod-03.png)

And once connected we can clearly see that this is one of those "no authentication or authorization" required, 

![](mongod-04.png)

`sensitive_information` looked like an interesting database. And the `flag` collection is the cherry. Flag acquired.


## Remediation

*Access control*

There are certain architectural decisions, which I can come up with, warranting a database with an open internet connection. But you need to specifically have the usecase to match it - and stringent security policies to safeguard the database. Whenever you can avoid placing databases at the edge, you should.

A database should be isolated in it's own storage segment, with strict access control policies in place. If you need to access it over the internet, set up a VPN into the segment. 

Hell, even placing it directly at the edge and only allowing ssh access would be better than the current solution. Configure the database to only allow localhost connections and set up a reverse ssh tunnel whenever you want to directly work with the database.

*Software lifecycle policies*

This version of mongodb is very old. Encountering this in the wild would indicate to me that the software lifecycle is not being maintained, and a pentest would be superfluous - a vulnerability assesment and good business processes review deliver more value if this were a paying customer.

Combine this with a regular scan from tools like Nessus or even automated port scan bash scripts which map publicly accessable ports and you're at least "in the know" of what you're presenting to the internet.