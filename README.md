# Introduction
This is a simple project that aims at allowing the user to create and copy a complex password at ease, instead of having to go through the process of google > website > button to generate > double click on field to select all > 2 buttons to copy.
I understand that it is a seamless operation, but for me, I find it quite disruptive.
I also understand that there are many packages that do just that, but I wanted to learn bash all the while.
Feel free to collaborate as you wish! 🙂

You will notice that the password is not actually printed out, this is a security preference, preventing it from being visible or saved anywhere easily accessible in the system.

# Guide

#There are 2 ways to use this tool

If you wish to generate a password anywhere and anytime with a single command follow these steps: 
- After cloning the repo, cd into `bash-password-cp`.
- Run `chmod u+x installer.sh`
- Run './installer.sh "<OS>" where OS is the operating system running on your machine. As of now, only MacOS and Windows are supported.
- Close the shell and open it again. You might get a message at the top, ignore it.
- Use the command `passgen <integer>` whereby the integer is a number between 6 and 30 (exclusive) specifying the length of the password
- Paste the password

If you don't wish to turn it into a command and would rather just use the script everytime, follow these steps:
- After cloning the repo, cd into 'bash-password-cp'.
- run 'nano <OS>_version.sh' Where <OS> is "win" or "mac" for windows or mac respectively.
- write "passgen $1" at the very end of the file (after the '}')
- save and exit (ctrl S, ctrl X for windows. Cmd idk, cmd idk for mac)
- Run 'chmod u+x <os>_version.sh' 
- Run './<os>_version.sh <integer>' where integer is a number between 6 and 30 (exclusive) specifying the length of the password
- Paste the password


That is all, thank you for downloading the tool and have a good day :)
