# x86 TUTORIALS

> A series of tutorials for absolute beginners of x86 assembly.

## Why Assembly?
According to Stack Overflow's 2023 Developer Survey, Assembly is only used by 4.42% of professional developers (2964 out of 67,053 respondents).
<br>

![image](https://github.com/Hussein-249/x86-64-practice/assets/105606941/2953382c-4a07-4329-a4a2-d4b856e130e8)

This percentage is small, and there is enough reason to focus on more common languages (for what it's worth, the most common language used was Javascript). The lowest language you will likely encounter professioanlly is C, which is significantly more straightforward to learn than Assembly. So perhaps assembly is best left to the systems engineers.

However, learning  x86 assembly for the challenge, and to better understand how a computer works at a low-level. A strong, sound understanding of low-level languages can help me understand computers better.

 <b>NOTE:<b/> for competency in embedded systems and something more useful to learn, you are likely better off learning Verilog, VHDL, or RTL.

# ENVIRONMENT

The environment used for these tutorials is ```Ubuntu 22```. This is because Ubuntu can run assembly with pre-packaged assemblers, NASM and GNU Assembler.

I have included a simple bash script to automate the process of assembling and linking, located in the main directory. Rename the file you want to run to ```index.asm``` and then run the script. It will assemble, run, and then print the exit code of that program (which is 0, if everything works correctly).

# Topics Currently Covered in This Series

- Assembly and its compilers
- Printing a string
- Taking user input

# Tutorials still in progress
- Conditional statements
- Arithmetic operations and results
- Functions
- More
