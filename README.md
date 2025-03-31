sinit - suckless init
=====================

sinit is a simple init. It was initially based on  
Rich Felker's minimal init[1].  

Why?
----

I wanted to get rid of Busybox init on my toy distro[2].  

How?
----

There are 3 signals that sinit will act on.  

      SIGUSR1: powers off the machine.  
      SIGINT:  reboots the machine (or alternatively via ctrl-alt-del).  
      SIGCHLD: reap children  

To see how sinit integrates with the init scripts, then have  
a look at [3].  

[1] https://gist.github.com/rofl0r/6168719  
[2] http://git.2f30.org/morpheus/  
[3] http://git.2f30.org/ports/tree/fs/  
