---
date: 2024-11-30T10:34:13+00:00
draft: false
title: Useful commandline tools
tags:
  - shell
  - linux
  - productivity
---

Optimizing my workflow to reduce unnecessary typing has been a game-changer, enhancing both my productivity and my connection to the tools I rely on. These shortcuts and efficiencies? Absolute lifesavers. Once you integrate them into your routine, the speed boost is unreal.
### z
This tool makes use of a "frecency" algorithm to remember the directories you navigated to. You then navigate to the directory by using bits and pieces of the location you want to jump to. Try it for a few days and you're hooked.

[z for bash](https://github.com/rupa/z) | [z for zsh](https://github.com/agkozak/zsh-z) | [z for fish](https://github.com/jethrokuan/z)

```sh
therder@pig:~$ z kap  
therder@pig:~/Documents/Git/kapott.github.io$ z dow  
therder@pig:~/Downloads$
```
### fzf
Fuzzy finder. Integrates with the almighty `Control-r` for history in bash. Also integrates into the `vim` Ex-mode to find files. Easy to use in scripts.

[fzf repository on github](https://github.com/junegunn/fzf)

![](../images/ctrl-r-fzf.png)

## vim
The legend. Combined with both fzf and a tool called ripgrep this thing turns into a powerhouse pseudo-IDE. There's just too much to learn, and I'll probably share some cool tricks with vim in the future.

Vim is an acquired skill though, with a low barrier of entry and a very high skillcap. It you're not using it right now, I can recommend picking it up - it will transform the way you think about editing text.

My recommendations for learning vim:
Book: Practical Vim | http://vimcasts.org/ | [Writing habits, by the author of vim](https://www.moolenaar.net/habits.html)
## aliases and functions
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

## Scripts and functions
I won't get too indepth here, but if it doesn't fit into an alias - I'll throw it into a function. If  I need some more logic, it'll become a script. 

Over time, I've accumulated scripts for so many things I don't even want to list them all here. My advice? Get good at writing scripts. Write them every time you have to build some verbose commandline, chain some abstract commands together -- that one-off openssl command for example... Don't *just* use them for repetitive tasks, use them for long commands, use them for convoluted, complex or weird commands. Everything that doesn't "immediately stick in your brain".

