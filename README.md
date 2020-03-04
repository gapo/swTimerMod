# swTimerMod

[!https://img.shields.io/badge/WIP-UNDER%20DEVELOPMENT-orange]

This project is an attempt to author a software timer linux kernel module. 
The timer will trigger a call back to a userspace function at expiry.

## Background

Software timers make up for several limitations in hardware timers.
However the linux kernel does not ship with any module that allows you to do that.
In particular, on low-cost computing platforms like the Raspberry Pi - this could be a good feature.


## Getting Started:

Install Linux headers.

In arch, 
```
$ sudo pacman -S linux-headers
```
Then issue make
```
$ make
```