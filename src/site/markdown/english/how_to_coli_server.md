**to do: the coli server how to is under construction**

# How to coli server

*What are the coli servers?*  
The coli servers are accessible to everyone with a coli mail address. Among others there are a bunch of compute clusters on which complex computations (e.g. training a big neural network) can be run. In practice, most time staff members of the LST department use it for their research. 

*Why should I care?*  
Imagine you need to train a large neural network for your term paper or any other computation that would block your own computer for hours (has to be study programme related of course).


## How to use them?

(last update: June 2021)
You need a coli account to access the servers (i.e. a `@coli.uni-saarland.de` mail address), see also [our site about wifi and emails](wifi_and_emails.html).
Beware: certain coli-wiki links below are only available via VPN.

**Attention: The servers are also used by staff members. If you use the servers extensively and especially right before their paper submission deadlines, staff members might get mad at you.**


#### how to access them?

<!-- todo: windows, linux with file explorer nautilus, ... -->

On a terminal, run
```bash
ssh -X username@login.coli.uni-saarland.de
```
where `username` is the username of your `@coli.uni-saarland.de` email. You will be asked for your password (i.e. the email password).
Afterwards you can connect to one of the compute clusters using  `ssh usernamer@clusternode` where `username` is again your coli user name and `clusternode` is the name of one fo the cluster nodes (e.g. `falken-1` or `jones-6`).
To directly connect to a cluster node, basically collapsing the two aforementioned ssh commands:
```bash
ssh -t username@login.coli.uni-saarland.de ssh username@jones-6
```
directly to cluster node (see also: [coli-wiki:Working from home](https://wiki.coli.uni-saarland.de/public/Working_from_home)).
To exit a cluster/the coli server completely, type `exit` and press enter.

what compute clusters are there?
see [coli-wiki:Compute](https://wiki.coli.uni-saarland.de/wiki/index.php/User_Doc/Compute):

- falken-1 to falken-4: Large memory compute servers 
- jones-1 to jones-6: GPU compute servers 
- tony-1 and tony-2: GPU compute servers

Citing the coli wiki:

> We kindly ask you to run processes with no GPU usage on the falken-X nodes to keep the GPUs the jones-X free for users who are dependent from GPUs.


#### how do I know which cluster nodes are occupied at the moment and by whom?  
Using [`ruptime`](https://manpages.ubuntu.com/manpages/xenial/en/man1/ruptime.1.html), [`rwho`](https://manpages.ubuntu.com/manpages/xenial/en/man1/rwho.1.html), [`htop`](https://manpages.ubuntu.com/manpages/xenial/en/man1/htop.1.html) (quit by pressing `q` or `F10`).
**to do**


#### how to move files to the coli servers and copy them back to disk?
**to do**
First: respect the disk quotas!! (see e.g. the coli wiki).
Second: if you just want to make a small change to an already existing file, you can also edit that file directly on the servers using one of the already installed file editors, e.g. try [`gedit`](https://wiki.gnome.org/Apps/Gedit) or [`nano`](https://www.nano-editor.org/)(see als the [cheatsheet of nano's shortcuts](https://www.nano-editor.org/dist/latest/cheatsheet.html)).
Third: what was actually asked for: There are multiple ways to do this:

- *command line*: using [`scp`](https://manpages.ubuntu.com/manpages/xenial/en/man1/scp.1.html) or [`sftp`](https://manpages.ubuntu.com/manpages/xenial/en/man1/sftp.1.html)...**to do** (for cluster nodes!!)
- (not for cluster nodes) more GUI like on Windows: see also [our site on this from a Windows computer (German)](../1x1/ssh.html)
- (not for cluster nodes) with File Explorer on Ubuntu [see here](https://help.ubuntu.com/stable/ubuntu-help/nautilus-connect.html.en), e.g. with address `sftp://username@login.coli.uni-saarland.de/home/CE/username` where `username` is your coli username (the prefix of your coli email address)  
- the detour using GitHub (using git commits and push/pull to sync is with a GitHub repo which in turn can be accessed from both the coli servers and your local computer)


#### how to install certain software (python packages, github repos, ...)?  
**to do**
First of all, check if it is already installed: e.g. there is already a working python installation on the servers (same holds for git).
Second, **right folder to install** (disk quotas!)
Installing anaconda on jones **to do**


#### do I have to keep the terminal open until my computations are done?  
Not if you are using `screen`: see [coli-wiki: working from home](https://wiki.coli.uni-saarland.de/public/Working_from_home) and [the very detailed manual for `screen`](https://www.gnu.org/software/screen/manual/screen.html). 
Here are just some basic commands:  

- `screen -ls`: lists all current screen sessions
- `screen -S fancyname`: creates a new screen session with name `fancyname`
- `Ctrl+A  D`: detach from an attached screen session (press Ctrl and A at the same time, release both, then press and release D)
- `screen -r fancyname`: re-attaches to the screen session named `fancyname`
- `screen -XS fancyname quit`: delete screen session named `fancyname`.


#### how do I know which GPUs are there on a specific cluster node?  
(e.g. when using pytorch/allennlp and want to specify gpu/cuda device)
**to do**
`nvidia-smi` works on jones.

## do's and don'ts 

- *disk usage*: your disk usage on the servers is limited. Keep an eye on how much memory you use and delete stuff you no longer need. See the [coli-wiki:disk usage](https://wiki.coli.uni-saarland.de/public/DiskUsage) on how to compute diskusage and how much you are allowed to use.
- don't block all compute power!!! You are not the only one using the servers!

## tips and tricks 

<!--
- **todo check this**
comet.ml: needed `export https_proxy="http://www-proxy.uni-saarland.de:3128"`, 
or someone mentioned `unset http_proxy` and `unset https_proxy` to donwload pretrained models??
--> 
- corpora available under `proj/corpora`: [coli-wiki:corpora](https://wiki.coli.uni-saarland.de/wiki/index.php/User_Doc/Corpora)
- about `https_proxy` and `http_proxy`: **to do**


## Links
- the [coli-wiki](https://wiki.coli.uni-saarland.de/wiki)
    - [working from home](https://wiki.coli.uni-saarland.de/public/Working_from_home): screen command and more
    - [disk usage](https://wiki.coli.uni-saarland.de/public/DiskUsage)
    - [Compute](https://wiki.coli.uni-saarland.de/wiki/index.php/User_Doc/Compute) clusters
    - [corpora](https://wiki.coli.uni-saarland.de/wiki/index.php/User_Doc/Corpora)
- other
    - [the very detailed manual for `screen`](https://www.gnu.org/software/screen/manual/screen.html)
    - [our site about wifi and emails](wifi_and_emails.html)

