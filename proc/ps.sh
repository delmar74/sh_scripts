###################
# get all process 
###################
ps aux 
ps -ef
ps -eF

## -e - all process
## -f - full information (UID, PID, PPID, C, STime, TTY, Time, Command)
## -F - full information (UID, PID, PPID, C, SZ, RSS, PSR, STime, TTY, Time, Command)
## 
## C - child process
## STime - start time for the process
## Time - amount of time by running process
##
## SZ - size of process
## RSS - real memory size
## PSR - processor the command 


#####################
# Format columns for VIEW
#####################
# Get all procces with custom columns
ps --format="uid uname %cpu %mem cmd"
ps --format="uid uname %cpu cp cputime %mem uname thcount cmd" T 

## Available are as follows columns: 
## %cpu, %mem, arg, c (Processor utilization), cmd, comm (Command name only), cp (CPU Usage), cputime 
## egid (Effective group ID), egroup, etime (elapsed time), euid, euser, gid, group, pgid, pgrp (Process group),
## ppid, start, sz, thcount (Threads owned by the process), time, uid, uname

##############################
# Sort processes
##############################
ps -ef --sort user,pid

## Available:
## cmd (Executable name)
## pcpu (CPU Utilization)
## flags (Flags)
## pgrp (Process group ID)
## cutime (Cumulative user time)
## cstime (Cumulative system time)
## utime (User time)
## pid (Process ID)
## ppid (Parent process ID)
## size (Size)
## uid (User ID)
## user (User Name)

##############################
# Search process by NAME/ID
##############################
# get several process
ps -p <PID> <PID>

# get PID by name (-f - full information)
ps -C docker
ps -f -C docker

#######################
# Other
#######################

# get current running processes
ps r

# get process for current TTY (terminal)
ps T

# get count of processes
ps aux | wc -l

# get process in tree
pstree

# current tty
tty

# get all tty
w
who

