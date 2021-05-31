**to do: the coli server how to is under construction**

# How to coli server

*What are the coli servers?*  
The coli servers are accessible to everyone with a coli mail address. Among others there are a bunch of compute clusters on which complex computations (e.g. training a big neural network) can be run. In practice, most time staff members of the LST department use it for their research. 

*Why should I care?*  
Imagine you need to train a large neural network for your term paper or any other computation that would block your own computer for hours (has to be study programme related of course).


## How to use them?

(last update: May 2021)
You need a coli account to access the servers (i.e. a `@coli.uni-saarland.de` mail address), see also [our site about wifi and emails](wifi_and_emails.html).
Beware: certain coli-wiki links below are only available via VPN.

**Attention: The servers are also used by staff members. If you use the servers extensively and especially right before their paper submission deadlines, staff members might get mad at you.**


*how to access them?*

<!-- todo: windows, linux with file explorer nautilus, ... -->

On a terminal, run
```bash
ssh -X username@login.coli.uni-saarland.de
```
where `username` is the username of your `@coli.uni-saarland.de` email. You will be asked for your password (i.e. the email password).
```bash
ssh -t login.coli.uni-saarland.de ssh jones-6
```
directly to cluster node.

what compute clusters are there?
[coli-wiki:Compute](https://wiki.coli.uni-saarland.de/wiki/index.php/User_Doc/Compute)

- falken-1 to falken-4: Large memory compute servers 
- jones-1 to jones-6: GPU compute servers 
- tony-1 and tony-2: GPU compute servers

Citing the coli wiki:

> We kindly ask you to run processes with no GPU usage on the falken-X nodes to keep the GPUs the jones-X free for users who are dependent from GPUs.


*how to move files to them and copy them back to disk?*
**to do**

*how to install certain software (python packages, github repos, ...)?*
**to do**

*do I have to keep the terminal open until my computations are done?*
Not if you are using `screen`: see [coli-wiki: working from home](https://wiki.coli.uni-saarland.de/public/Working_from_home) and [the very detailed manual for `screen`](https://www.gnu.org/software/screen/manual/screen.html).

## do's and don'ts 

- *disk usage*: your disk usage on the servers is limited. Keep an eye on how much memory you use and delete stuff you no longer need. See the [coli-wiki:disk usage](https://wiki.coli.uni-saarland.de/public/DiskUsage) on how to compute diskusage and how much you are allowed to use.
- don't block all compute power!!! You are not the only one using the servers!

## tips and tricks 

<!--
- **todo check this** downloading models on any of the uni cluster servers? run `unset http_proxy` and `unset https_proxy` first. 
--> 
- corpora available under `proj/corpora`: [coli-wiki:corpora](https://wiki.coli.uni-saarland.de/wiki/index.php/User_Doc/Corpora)


## Links
- the [coli-wiki](https://wiki.coli.uni-saarland.de/wiki)
    - [working from home](https://wiki.coli.uni-saarland.de/public/Working_from_home): screen command and more
    - [disk usage](https://wiki.coli.uni-saarland.de/public/DiskUsage)
    - [Compute](https://wiki.coli.uni-saarland.de/wiki/index.php/User_Doc/Compute) clusters
    - [corpora](https://wiki.coli.uni-saarland.de/wiki/index.php/User_Doc/Corpora)
- other
    - [the very detailed manual for `screen`](https://www.gnu.org/software/screen/manual/screen.html)
    - [our site about wifi and emails](wifi_and_emails.html)

