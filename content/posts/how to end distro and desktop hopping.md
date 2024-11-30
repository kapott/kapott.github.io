---
date: 2024-11-30
draft: true
title: How to end distro and desktop hopping
tags:
  - linux
  - productivity
---

Gone are the countless hours of finetuning my color palettes, borders, scrollbars and semi-transparency. My linux distro, and my desktop environment, have become extensions of my mind - more than a design statement to be posted in r/unixporn. What changed?

I've distrohopped since Slackware 96. These last few years I've settled on another O.G. somewhat permanently for my desktop use: Debian. 

"y u no use Arch?!" you might say. "Prepackaged enterprise software" would be my reply.

More than hopping distro, however, I hopped desktop environments. Customizing every visual part to make using it somewhat palatable. This, too, has grinded to a halt.

The magic behind this wonderful transformation?

1. [billable hours](billable%20hours.md)
2. a [sane default tiling window manager](sane%20default%20tiling%20window%20manager.md) setup with vim-like navigation
3. a couple of [useful commandline tools](useful%20commandline%20tools.md)
4. one-size-fits-all window-and screen layout that works for every task
5. years of experience make every other environment feel slow, impractical and whatever the opposite of pragmatic is.

## Billable hours
I've been fortunate enough to not have to track my billables. Ever. And then I founded a software company. At first it was just me, and the work resembled freelancing; I'd show up, punch in, get paid stupid amounts per hour, and punch out.

One day, as I plopped down my trusty thinkpad on the flex-desk in officeville, corporate-town, I decided it would be prudent to run a full system upgrade before picking up my first ticket of the day.

Work did not get done that day. In my situation, that means I get paid just shy of a 1000 euros less. And I realized; 

*No wobbly-window-with-transparency customization is worth this fucking much. My shit just always needs to work.*

Whilst I realize noone is ever 100% productive for an entire day, breaking a distro tanks that productivity to an absolute zero. Combine that with internal struggle to guide my own focus and even on a good day I'd have at least cheated myself out of two to three billable hours.

Switching to a mac seemed like a good idea back then. A least I wouldn't be able to waste my time with customizing yet another desktop environment, or breaking the OS during a workday. But this comes with an entirely new set of problems.

Look, I don't hate apple or macos. Whilst I'm not a fan either, I need to admit that their native apps are pretty great nowadays. Interlinking notes in the 'Notes' app, dragging tasks in reminders into the calendar - and being able to use the same app on all devices - definitely are big fat pro's. But there's something missing in the main workhorse OS...

## A sane-default tiling window manager with vim-like navigation

Lifting my hands from the keyboard, clicking through applications to find the one I need - dragging it to where I want it and then maybe even resizing it... those are cognitive bumps. 

For neurotypical people this might come at a small cost, but it is still something that could theoretically interrupt the illusive flow state. For my brain, it's an open invitation to find the most distracting window and destroy the current train of thought.

Apart from the cognitive bump, there's also the physical one. I've been using computers for at least 6 hours a day since I was around 12 years old. I'm 41 at the time of writing. Erosion has taken it's toll. The only way I can consistently use a computer is by using all kinds of ergonomic gadgets and seeing if they alleviate pains in my arms, wrists and fingers. 

One of these gadgets is a split keyboard. The other is another keyboard layout which minimizes finger travel. And the most important one for both reducing armpain and preventing my brain from going into full-on dopamine-party mode (most of the time)? A tiling window manager.

There exist some extensions and hacks to bring the "tiling" part to other operating systems. Most notibly powertoys on windows and something like the 2024 Sequoia update, or the rectangles app on macos. Some of them are actually pretty good! But none capable enough to deeply integrate a decent standard workflow into.

Currently I use i3-wm with a pre-configured pane layout. Some contain applications in tabbed sections, some sections contain stacked applications, but all are well-thought out and firmly integrated into a near frictionless desktop experience. I'm not hung up on i3, but alternatives seem to require a big time investment with regards to customization.

## A couple of useful commandline tools

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