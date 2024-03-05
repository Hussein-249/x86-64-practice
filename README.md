# x86 TUTORIALS
![](https://img.shields.io/badge/Incomplete-red)
![](https://img.shields.io/badge/Status-Ongoing-blue)
[![GitHub issues](https://img.shields.io/github/issues/Hussein-249/x86-64-practice)](https://github.com/Hussein-249/x86-64-practice/issues)


> A series of tutorials for absolute beginners of x86 assembly.

## Author's Update
 <b>Update: <b/>  I've recently looked over these tutorials and while they are suitable for beginners, they currently focus on features available in every other language, such as printing or conditional statements. However, to effectively learn assembly for the real world, tutorials must focus on more important aspects of assembly such as managing the stack. Bear in mind I am independently learning assembly, so this tutorial series will be slow, and will hopefully improve over time. I'll begin implementing comparisons between self-written assembly and assembly from gnu-compiled C and C++ code.

I still intend to continue this series, as comprehensive x86 assembly tutorials are hard to find online, and many of them are dated.

## Why Assembly?
According to Stack Overflow's 2023 Developer Survey, Assembly is only used by 4.42% of professional developers (2964 out of 67,053 respondents).
<br>

![image](https://github.com/Hussein-249/x86-64-practice/assets/105606941/2953382c-4a07-4329-a4a2-d4b856e130e8)

This percentage is small, and there is enough reason to focus on more common languages (for what it's worth, the most common language used was Javascript). The lowest language you will likely encounter professionally is C, which is significantly more straightforward to learn than Assembly. So perhaps assembly is best left alone.

However, learning  x86 assembly for the challenge, and to better understand how a computer works at a low-level. A strong, sound understanding of low-level languages can help me understand computers better. Assembly can prove especially useful when comparing compilers and optimizing code. Assembly offers a 1-to-1 translation of machine instructions, one step removed from bytecode. This can reveal differences in compiled code from the same source files, which is crucial in low-latency or high-performance computing.

 <b>NOTE:<b/> For computer systems students and something more useful to learn, you are likely better off learning Verilog, VHDL, or RTL, as these skills are more commonly demanded. Moreover, x86 assembly is (naturally) different from ARM Assembly, which seems to be gaining in popularity.

# Environment

The environment used for these tutorials is ```Ubuntu 22```. This is because Ubuntu can run assembly with pre-packaged assemblers, namely the NASM and GNU assemblers.

I have included a simple bash script to automate the process of assembling and linking, located in the main directory. Rename the file you want to run to ```index.asm``` and then run the script. It will assemble, run, and then print the exit code of that program (which is 0, if everything works correctly, and may be different if the program uses it to output numbers from mathematical operations).

# Topics Currently Covered in This Series

- Assembly and its compilers
- Printing a string
- Taking user input

# Tutorials still in progress
- Conditional statements
- Arithmetic operations and results
- Functions
- More
