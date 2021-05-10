Grundsätzlich ist zu unterscheiden zwischen Windows-Systemen und Unix-Systemen (zu denen Linux und Apple OS X gehören).


## Linux

Da Linux-Distributionen auf Unix basieren, sind die meisten Befehle, die für das Studium benötigt werden, schon vorinstalliert und können ohne weiteres über das **Terminal** aufgerufen und ausgeführt werden. 


## Apple OS X
 
Mac-Nutzer können aufatmen: Da OS X auf Unix basiert, sind verschiedene Befehle bereits vorinstalliert und können ohne weiteres über das **Terminal** aufgerufen und ausgeführt werden. 

### Allerdings:

Teilweise ist es recht kompliziert, neue Befehle zu installieren und die installierten Befehle liegen oft in einer veralteten Version vor. Es bietet sich deshalb an, über [SSH]({filename}ssh.md) auf die CoLi-Server zuzugreifen und deine Befehle über diese laufen zu lassen. Außerdem vermeidest du so eventuell auftretende Codierungsprobleme. 


## Microsoft Windows 7, 8 &amp; 10

Windows hat leider keine vorinstallierte Shell, die mit Unix-Befehlen klar kommt. Deshalb müssen wir auf Alternativen zugreifen, die da wären [PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html) und [Cygwin](https://www.cygwin.com/).


Die einfachste Lösung, um diesen Mangel auszugleichen, ist über [SSH]({filename}ssh.md) auf die CoLi-Server zuzugreifen, um auf alle dort installierten Befehle zugreifen zu können. Zusätzlich kannst du mit den Befehlen `curl` oder `scp` Dateien auf deinen Account kopieren oder sogar hin und her verschieben. [PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html) ist für diese Zwecke super geeignet. 

Etwas umständlicher, dafür aber lokal geht es mit [Cygwin](https://www.cygwin.com/). Dieses Programm erweitert dein Windows-Betriebssystem um die aus der Unix-Welt bekannten Befehle und lässt dich Befehle unkompliziert nachinstallieren. 

Für das erste Semester reicht ein funktionierender Zugang über [SSH]({filename}ssh.md).


## UNIX: Grundlagen

Zur grundsätzlichen Einführung findet ihr hier die [Folien des Propädeutikums](../pdf/UnixPraes.pdf) zum Thema UNIX vom Beginn des Wintersemesters.





