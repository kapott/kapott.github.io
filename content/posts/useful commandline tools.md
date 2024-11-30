---
date: 2024-11-30T10:34:13+00:00
draft: true
title: Useful commandline tools
tags:
  - shell
  - linux
  - productivity
---

Reducing the amount I have to type, increasing my speed of output and thus my man-machine appendage adherence experience; these are the tools that I really can't live without.  The sheer speed they add once you use them daily is bonkers.

**z**
This tool makes use of a "frecency" algorithm to remember the directories you navigated to - and then they're available to switch to using fuzzy finding.

```sh
therder@pig:~$ z kap  
therder@pig:~/Documents/Git/kapott.github.io$ z dow  
therder@pig:~/Downloads$
```

**fzf**
Fuzzy finder. Integrates with the almighty `Control-r` for history in bash. Also integrates into the `vim` Ex-mode to find files. Easy to use in scripts.

![](../images/ctrl-r-fzf.png)


**vim**
The legend. Combined with both fzf and a tool called ripgrep this thing turns into a powerhouse pseudo-IDE.

**aliases and functions**
every single-letter on the keyboard has aliases attached to them - some examples:
```
alias c="curl -qL --insecure"
alias d="docker"
alias g="git"
alias k="kubectl"
alias l="ls -alHz"
alias n="nmap -F -O"
alias o="openssl s_client -showcerts -connect"
alias p="podman"
alias s="systemctl"
```
Sometimes expanding these aliases to two or three letters:
```
alias ss="systemctl status"
alias sss="systemctl start"
alias ssh="systemctl stop"
alias sfl="journalctl -fu"
alias dps="docker ps -a"
```

Or adding a number as postfix  for variants which make sense - nmap, for example. `n` is fast scan of the top 100 ports. When I want to scan a single host and use host detection, service detection and scan every port, I'll use `n1` - which has the mnemonic "nmap a single host completely"

```
alias n1="nmap -p- -sC -sV -vv"
```

**Scripts and functions**
I won't get too indepth here, but if it doesn't fit into an alias - I'll throw it into a function. If  I need some more logic, it'll become a script. 

Over time, I've accumulated scripts for so many things I don't even want to list them all here. My advice? Get good at writing scripts. Write them every time you have to build some verbose commandline, chain some abstract commands together -- that one-off openssl command for example... Don't *just* use them for repetitive tasks, use them for long commands, use them for convoluted, complex or weird commands. Everything that doesn't "immediately stick in your brain".