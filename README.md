# swTimerMod

![Work in progress](https://img.shields.io/badge/WIP-UNDER%20DEVELOPMENT-orange)

This project is an attempt to author a software timer linux kernel module. 
The timer will trigger a call back to a userspace function at expiry.

## Background

Software timers make up for several limitations in hardware timers.
However the linux kernel does not ship with any module that allows you to do that.
In particular, on low-cost computing platforms like the Raspberry Pi - this could be a good feature.


## Getting Started:

### Building

Install Linux headers.

In arch, 
```
$ sudo pacman -S linux-headers
```
Then issue make
```
$ make
```

### Loading and Unloading

In order to run the module

```
# insmod swTimerMod.ko
```
Now the module will load and print information to the kernel log.
Since Archlinux uses systemd -
```
# journalctl -xe
```
Mar 11 20:08:30  kernel: Hello!
Mar 11 20:08:30  kernel: The process is "insmod" (pid 15545)

To unload the module

```
# rmmod swTimerMod.ko
```
