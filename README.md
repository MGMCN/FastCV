# FastCV
Build your personal cv with hugo and display it using github.io.
## Environment
```Bash
# MacOS Ventura 13.2
# When you execute the command plz remove '$' first.
$ hugo version
hugo v0.110.0+extended darwin/arm64 BuildDate=unknown
```
# Get start
## Install homebrew
Homebrew is a free and open source package management system that simplifies the installation of software on macOS systems.
```Bash
$ /bin/bash -c “$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)”
```
## Configure SSH key for github
```Bash
# Open your terminal
$ cd ~
$ cd .ssh # If you don't have this folder, please google for how to generate ssh key.
$ ls
id_rsa		id_rsa.pub ...
$ cat id_rsa.pub # Copy all your output.
.
.
.
```
Access your github account settings page  
Find option SSH key and GPG keys
