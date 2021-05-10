SSH steht für **S**ecure **Sh**ell.  
Kurz gesagt geht es darum, von zu Hause aus auf die CoLi-Server zuzugreifen und Aufgaben zu erledigen, als ob du vor einem Rechner in der CoLi sitzt. 
	

## Wie stelle ich eine solche Verbindung her?

### Mit Unix (Mac OS und Linux)
	
Öffne die Shell deiner Wahl und gib folgenden Befehl ein:

```sh
ssh -X benutzername@login.coli.uni-saarland.de
```

Danach wirst du nach deinem Passwort gefragt.  
Nach korrekter Eingabe kannst du so arbeiten, als ob du an der Uni sitzen würdest.
	

### Mit Windows 

Ein reiner SSH-Client für Windows ist z.B. [PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html).
	
Wir empfehlen euch als Windows-Nutzer jedoch, SSH und SFTP in einem Programm zu kombinieren. Das funktioniert mit WinSCP (wird im Abschnitt SFTP erklärt), da es PuTTY integrieren kann.
	 
	
Dazu müsst ihr die `putty.exe` herunterladen und in eurem lokalen Programmordner einen Ordner namens PuTTY erstellen (z.B. `C\Programme (x86)\PuTTY`).  
Wenn ihr das getan habt, könnt ihr in WinSCP einfach die Option "mit PuTTY anmelden" auswählen, wenn ihr eine SSH-Verbindung herstellen möchtet. 
	

## SFTP

Es ist schon umständlich, ständig `ls` einzutippen, um den Ordnerinhalt anzuzeigen, nur um dann mit `cd` den Order zu wechseln und das ganze Spiel wieder von vorne beginnen zu lassen. Wie wäre es, doch einfach wie beim Finder oder Explorer gewohnt durch den Datendschungel navigieren zu können? 


Das geht! **SFTP** (**S**ecure **F**ile **T**ransfer **P**rotocol) lautet das Zauberwort. <br>Im Programm deiner Wahl, z.B. [Cyberduck](https://cyberduck.io/?l=de) (für Mac und Windows) oder [WinSCP](https://winscp.net/eng/docs/lang:de) (für Windows) gibst du als Servername `login.coli.uni-saarland.de` ein, als Port wählst du `22`, gibst Benutzername und Passwort ein und loggst dich ein. 

Windows-Nutzern empfehlen wir [WinSCP](https://winscp.net/eng/docs/lang:de), da es sehr einfach zu benutzen und leicht mit [PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html) kombinierbar ist (siehe oben). Bei der Installation müsst ihr darauf achten, dass ihr die **Explorer-Ansicht** einstellt (<font color="#F00000">Vorsicht: Das ist nicht die Standard-Einstellung!</font>).


Wenn ihr in WinSCP die Verbindung zu eurem Coli-Account eingebt, sieht das folgendermaßen aus (ersetzt "simona" durch euren Coli-Benutzernamen):

![Alt Text](images/1x1/Screenshot_WinSCP.png "Screenshot WinSCP")


Wenn ihr im obigen Bild auf "Anmelden" klickt, landet ihr in eurem Home-Verzeichnis und habt dieses in der Explorer-Ansicht vor euch:

![Alt Text](images/1x1/Screenshot_WinSCP.png "Screenshot WinSCP_2")


Wenn ihr mit WinSCP eine Verbindung herstellt, habt ihr zusätzlich zur Explorer-Ansicht auch die Möglichkeit, eine Konsole zu öffnen (klickt dazu auf die entsprechende Schaltfläche in der Werkzeugleiste oder drückt `Strg+T`).


Allerdings funktionieren in dieser Konsole keine Befehle, die eine Eingabe vom Benutzer erfordern, und außerdem kann man Befehle nicht abbrechen. Wenn ihr also plant, die Konsole ausgiebig zu nutzen, solltet ihr eher eine SSH-Verbindung über PuTTY herstellen.

