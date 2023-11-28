# Simplest Assembly Program
No more "Hello World!"
<br>

This assembly program is even simpler than printing Hello World to the console. This assembly program simply exits itself, doing absolutely nothing!
<br>

I'll break it down line by line.

```
global _start
```

The global keyowrd allows our "function", which is actually a label _start, to be visible by other programs outside of this file. _start marks the entry point of the program. So, with this line we are ensuring the entry point of this assembly program is visible to the      assembler and linker.

```
section .text
```
We are declaring the section that contains the code for our assembly program.

```
_start:	mov rax, 60 ; 60 is the system exit call for Linux
	mov rdi, 0
	syscall
```
I'll break this down line by line. .start: indicates the the code for our _start label.

```
mov rax, 60
```

This program uses AT&T syntax. In this syntax, we write basic instructions in this order:
```
instruction destination, value / origin
```

So mov rax, 60 in plain english means "move 60 into the RAX register". The last value can be another register, in which case the value of the origin is COPIED, not moved, into the destination. The origin will still contain its value.
<br>

But why did I choose to move the number 60 into this register?
<br>

This is because I am writing assembly for Linux (Ubuntu). In Linux, 60 corresponds to the exit system call. We copy this value into the RAX register, which conventionally stores our system call values.
<br>

So, when syscall is called later, the value 60 will be read from the RAX register by the Linux kernel, and the kernel will then exit the program. We will explore other system calls in later tutorials.

```
mov rax, 60
```

When a syscall is made, some arguments are passed into it by placing values in specific registers. RDI is the register for the second argument.
<br>

For EXIT, the value in RDI will correspond to the exit code the system returns when exiting. THat means this program exits with the exit code 0, indicating a successful exit.

```
syscall
```
This line simply tells the Linux kernal to perform the syscall that is specified by the RAX register.

### Summary

And that's it! 😄 This program simply starts, sets the register to tell Linux to exit the program, and then performs a system call.

Truly, one of the simplest programs ever.

Move on to Part 1.
