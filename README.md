# x86 TUTORIALS

This is a series of tutorials to help me and you learn x86 Assembly language!

## Why Assembly?
According to Stack Overflow's 2023 Developer Survey, Assembly is only used by 4.42% of professional developers (2964 out of 67,053 respondents).
<br>

![image](https://github.com/Hussein-249/x86-64-practice/assets/105606941/2953382c-4a07-4329-a4a2-d4b856e130e8)

This percentage is small, and there is enough reason to focus on more common languages (for what it's worth, the most common language used was Javascript). As a software developer, the lowest language you will likely encounter is C, which is significantly more straightforward to learn than Assembly. So perhaps assembly is best left to the systems engineers.

Personally, I chose to learn x86 assembly for the challenge, and to better understand how a computer works at a low-level. My field of study is computer science and not systems engineering, yet I believe that a strong understanding of low-level languages can help me learn C and C++, and perhaps give me an advantage in the job market.

And as a bottom line, it's never too late nor a bad idea to learn something new. And assembly can be fun!
## Part 0

Before starting, I suggest taking a look at my document containing the (assuming that I have remembered to keep it up to date, please remind me if I haven't).

Start by navigating to the Part 1 folder and opening simplest-assembly-program in a text editor of your choice.
<details>
<summary> The Simplest Assembly Program </summary>
<br>
No more "Hello World!"
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

  </details>

