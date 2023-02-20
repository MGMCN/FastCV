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
$ cd ~/.ssh # If you don't have this folder, please google for how to generate ssh key.
$ ls
id_rsa		id_rsa.pub ...
$ cat id_rsa.pub # Copy all your output.
.
.
.
```
Access your github account settings page. (ps:If you are already logged in then just click -> [link](https://github.com/settings/keys))  
Find option called SSH key and GPG keys.  
Create SSH key like 👇🏻. Put the text of the id_rsa.pub you copied into the place of the key below.  
<img src="./images/add_sshkey.jpg" width = "500" height = "300"/>   
## Create a repository for your cv
Notice: Repo name should be like your_account_name.github.io.
<img src="./images/create_repo.jpg" width = "700" height = "500"/>  
## Install hugo
```Bash
$ brew install hugo
$ hugo version # Success if version output is available
...
```
## Build our cv locally
```Bash
$ mkdir hugoServer
$ cd hugoServer
$ hugo new site blog
$ cd blog/themes
$ git clone https://gitlab.com/mertbakir/resume-a4.git
$ cd resume-a4
$ cp config.yaml ../../
$ cp -r exampleSite/data ../../
$ echo "theme = 'resume-a4'" >> config.toml
$ hugo server --disableFastRender # Now you can check your hugo-server is working locally by access http://localhost:1313/ .
```
## Build our cv on github.io
```Bash
$ vim config.toml
baseURL = 'https://your_account_name.github.io/' # 👈🏻 edit this line
languageCode = 'en-us'
title = 'My New Hugo Site'
theme = 'resume-a4'
$ hugo -D
$ cd public
$ git init
$ git remote add origin git@github.com:your_account_name/your_account_name.github.io.git
$ git pull origin main
$ git add .
$ git commit -m "first commit"
$ git push -u origin main
.
.
.
# Now you can view your cv by visiting your_account_name.github.io/index.html
```
