# Introduction
This is a simple project that aims at allowing the user to create and copy a complex password at ease, instead of having to go through the process of google > website > button to generate > double click on field to select all > 2 buttons to copy.
I understand that it is a seamless operation, but for me, I find it quite disruptive.
I also understand that there are many packages that do just that, but I wanted to learn bash all the while.
Feel free to collaborate as you wish! 🙂

You will notice that the password is not actually printed out, this is a security preference, preventing it from being visible or saved anywhere easily accessible in the system.

# Guide
- After cloning the repo, cd into `bash-password-cp`.
- Run `chmod u+x run.sh`
- Run `sh ./run.sh <integer>` whereby the integer is a number between 6 and 30 (exclusive) specifying the length of the password
- Paste the password

You could also make it an alias in your command line. For example, if you're using `zsh`, you could run `alias -g [alias-name]="/path/to/project/run.sh"`. Then you type `[alias-name] 14`.
