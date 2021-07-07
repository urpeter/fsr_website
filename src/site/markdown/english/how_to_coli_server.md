**to do: the coli server how to is under construction**
*Use at your own risk, no responsibility is taken for the correctness of this information.*

# How to coli server

*What are the coli servers?*  
The coli servers are accessible to everyone with a coli mail address. Among others there are a bunch of compute clusters on which complex computations (e.g. training a big neural network) can be run. In practice, most time staff members of the LST department use it for their research. 

*Why should I care?*  
Imagine you need to train a large neural network for your term paper or any other computation that would block your own computer for hours (has to be study programme related of course). Sometimes courses will tell you to use the coli servers because the needed environment/programmes is already set up there.


## How to use them?

(last update: June 2021)
You need a coli account to access the servers (i.e. a `@coli.uni-saarland.de` mail address), see also [our site about wifi and emails](wifi_and_emails.html).
Beware: certain coli-wiki links below are only available via VPN.

**Attention: The servers are also used by staff members. If you use the servers extensively and especially right before their paper submission deadlines, staff members might get mad at you.**


#### how to access them?

<!-- PuTTY: https://www.chiark.greenend.org.uk/~sgtatham/putty/ see also the 1x1 : ssh (German) -->
<!-- German: also below with description to transfer files, ...: https://wiki.ubuntuusers.de/SSH/ -->
<!-- todo: windows, linux with file explorer nautilus, ... -->

*Disclaimer: following should work on Linux/Mac*

You can do this using `ssh` ([Wikipedia](https://en.wikipedia.org/wiki/Secure_Shell_Protocol)). On a terminal, run
```bash
ssh -X username@login.coli.uni-saarland.de
```
where `username` is the username of your `@coli.uni-saarland.de` email
(the `-X` option means X11 forwarding: will allow you to run GUI programmes installed on the server, e.g. gedit to edit files). <!-- (for PuTTY users: under "SSH"-"X11" that's the "enable X11 Forwarding" checkbox).  -->
You will be asked for your password (i.e. your email password).
Afterwards you can connect to one of the compute clusters using  `ssh usernamer@clusternode` where `username` is again your coli user name and `clusternode` is the name of one fo the cluster nodes (e.g. `falken-1` or `jones-6`).
To directly connect to a cluster node, basically collapsing the two aforementioned ssh commands (ignoring X11 forwarding for now):
```bash
ssh -t username@login.coli.uni-saarland.de ssh username@clusternode
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

Important: processes/compute jobs like training a large neural network should be done on a cluster node, NOT on the login server!

On the servers you can navigate through directories using the commands known from Unix shells (see also [our site about unix commands](unix_commands_en.html)).

#### how do I know which cluster nodes are occupied at the moment and by whom?  
Using [`ruptime`](https://manpages.ubuntu.com/manpages/xenial/en/man1/ruptime.1.html), [`rwho`](https://manpages.ubuntu.com/manpages/xenial/en/man1/rwho.1.html), [`htop`](https://manpages.ubuntu.com/manpages/xenial/en/man1/htop.1.html):

If you are on a specific cluster node..
- `ruptime` will display all cluster nodes, how long they are up, whether they are up/down, the number of users currently logged on and the system load average for the past 1,5, and 15 minutes. Note that a cluster node can have 0 users logged on and still full load (see the `screen` command below for how this can happen).
- `rwho` will display who is currently logged on. It will display the user name, the cluster node name, the start date and time, and the number of minutes a user's session has been inactive. Users who have been inactive for at least an hour will be omitted unless the `-a` flag is given.
- `htop` is basically a command line tool to see what processes are running at the moment. (quit by pressing `q` or `F10`)**to do** 
<!-- interactive unlike `top` which just prints output once and exits) -->

On a specific GPU cluster node (one of the jones or tony's), you can run `nvidia-smi` to view available GPUs, how much each GPU is occupied and by which process.


#### how to move files to the coli servers and copy them back to disk?
**to do**
First: respect the disk quotas!! (see e.g. the [coli wiki](https://wiki.coli.uni-saarland.de/public/DiskUsage)).
Second: if you just want to make a small change to an already existing file, you can also edit that file directly on the servers using one of the already installed file editors, e.g. try [`gedit`](https://wiki.gnome.org/Apps/Gedit) or [`nano`](https://www.nano-editor.org/)(see als the [cheatsheet of nano's shortcuts](https://www.nano-editor.org/dist/latest/cheatsheet.html)).
Third: what was actually asked for: There are multiple ways to do this:

- *command line*: using [`scp`](https://manpages.ubuntu.com/manpages/xenial/en/man1/scp.1.html) ([Wikipedia](https://en.wikipedia.org/wiki/Secure_copy_protocol)) or [`sftp`](https://manpages.ubuntu.com/manpages/xenial/en/man1/sftp.1.html) ([Wikipedia](https://en.wikipedia.org/wiki/SSH_File_Transfer_Protocol))...**to do** (for cluster nodes!!) <!-- https://en.wikipedia.org/wiki/Rsync -->
- (not for cluster nodes) more GUI like on Windows: see also [our site on this from a Windows computer (German)](../1x1/ssh.html)
- (not for cluster nodes) with File Explorer on Ubuntu [see here](https://help.ubuntu.com/stable/ubuntu-help/nautilus-connect.html.en), e.g. with address `sftp://username@login.coli.uni-saarland.de/home/CE/username` where `username` is your coli username (the prefix of your coli email address)  
- the detour using GitHub (using git commits and push/pull to sync is with a GitHub repo which in turn can be accessed from both the coli servers and your local computer)


#### how to install certain software (python packages, github repos, ...)?  
**to do**
First of all, check if it is already installed: e.g. there is already a working python installation on the servers (same holds for git).
Second, **right folder to install** (disk quotas!) <!-- home/CE vs /local ...  -->
Installing anaconda on jones **to do**
1. (First time users). Create `username` directories (where username is your coli username) under `/home/CE/` and `/local/`. 
- Remember you can modify and navigate through the folder structure using the usual Unix commands like `cd`, `ls`, `mkdir` and so on (see also [our site about unix commands](unix_commands_en.html)).
- Note that your `/home/CE/username` folder will have a 500MB limit (more on [disk qutoas in the coli-wiki](https://wiki.coli.uni-saarland.de/public/DiskUsage)). That's not the right place to install software. Also this will be your home directory (i.e. once this folder is created, you can use `cd ~` to get back to it)
- The `/local/username` is where you would like your python/anaconda installation to go. <!-- Note that your `/local/username` directory doesn't have this 500MB limit, **todo limit? no backup?** -->
2. Move to your `/local/username` directory (e.g. using `cd`). So check that you are at `username@clusternode:/local/username`
3. Optional: create a `temp` folder under it and move to it (to not have it clutter your top-level directory)
4. You can install anaconda using a bash script downloadable from the [Anaconda website](https://www.anaconda.com/products/individual), the Linux installer <!--64-Bit (x86) Installer-->.  **to do** 
<!-- 
e.g. `wget https://repo.anaconda.com/archive/Anaconda3-2021.05-Linux-x86_64.sh`
5. Install with
```bash
bash Anaconda3-2021.05-Linux-x86_64.sh
```
6. Keep pressing ENTER to go through the License Agreement after this:
> In order to continue the installation process, please review the license agreement. Please, press ENTER to continue
7. When the following prompt appears, specify your installation location as followed:
> Anaconda3 will now be installed into this location:
> /home/CE/username/anaconda3 <-- should NOT go there
> 
> Press ENTER to confirm the location
> Press CTRL-C to abort the installation
> Or specify a different location below <-- DO THIS
> [/home/CE/username/anaconda3] >>> /local/username/anaconda3
8. Activate your installation by: `source ~/.bashrc`
9. Test if worked **to do** conda activate?  conda info --env  ?
-->


#### do I have to keep the terminal open until my computations are done?  
Not if you are using `screen`: 
<!-- ([Wikipedia](https://en.wikipedia.org/wiki/GNU_Screen)) --->
see [coli-wiki: working from home](https://wiki.coli.uni-saarland.de/public/Working_from_home) and [the very detailed manual for `screen`](https://www.gnu.org/software/screen/manual/screen.html). 
Here are just some basic commands:  

- `screen -ls`: lists all current screen sessions
- `screen -S fancyname`: creates a new screen session with name `fancyname`
- `Ctrl+A  D`: detach from an attached screen session (press Ctrl and A at the same time, release both, then press and release D). There are more shortcuts, `Ctrl+A  ? ` to view all avialable ones.
- `screen -r fancyname`: re-attaches to the screen session named `fancyname`
- `screen -XS fancyname quit`: delete screen session named `fancyname`
- `screen -h`: shows help message/options

An alternative is to use `nohup` ([Wikipedia](https://en.wikipedia.org/wiki/Nohup)).

#### how do I know which GPUs are there on a specific cluster node?  
(e.g. when using pytorch (`torch.device(f‘cuda:{k}’)`)/allennlp and want to specify gpu/cuda device)
`nvidia-smi` works on jones/tony. GPUs are numbered starting from 0 for the first.

## do's and don'ts 

- *disk usage*: your disk usage on the servers is limited. Keep an eye on how much memory you use and delete stuff you no longer need. See the [coli-wiki:disk usage](https://wiki.coli.uni-saarland.de/public/DiskUsage) on how to compute diskusage and how much you are allowed to use.
- don't block all compute power!!! You are not the only one using the servers!

## tips and tricks 

<!--
- **todo check this**
comet.ml: needed `export https_proxy="http://www-proxy.uni-saarland.de:3128"`, 
or someone mentioned `unset http_proxy` and `unset https_proxy` to donwload pretrained models??
To view current value for the proxies can do `echo "$http_proxy"` and `echo "$https_proxy"`. To set or unset the proxy:
```
export https_proxy="https://proxy.coli.uni-saarland.de:PORT"
export http_proxy="http://proxy.coli.uni-saarland.de:PORT"
unset https_proxy
unset http_proxy
```
--> 
- check out the [coli-wiki](https://wiki.coli.uni-saarland.de/wiki/index.php/User_Doc) (use the university VPN to access the full documentation!): there are also some sites for how to use some special programmes (e.g. Docker, gradle...).
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
    - [our site about unix commands](unix_commands_en.html)

