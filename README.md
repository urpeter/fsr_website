# website


*Website des Fachschaftsrats der [Fachrichtung Sprachwissenschaft und Sprachtechnologie](https://www.uni-saarland.de/fachrichtung/lst.html) an der [Universität des Saarlandes](https://www.uni-saarland.de/start.html) in Saarbrücken.* / Website of the student council of the [departement of Language Science and Technology](https://www.uni-saarland.de/en/department/lst.html) at the [Saarland University](https://www.uni-saarland.de/en/home.html), Saarbrücken, Germany.

*Aktuelle Website siehe* / Current website at http://www.coli.uni-saarland.de/fs-coli/

Right now (May 2021) the repository is not regulary synced with the servers. Therefore the current website and the github repository might be different.

### Getting started

The `insa_push.sh` script would sync this github repositiory with the server, but it only works if you know up's password ;-)

If you would like to try it **locally**, you can do the following:
1. Navigate to the folder where this README resides.
2. If it's not already executable, make `gradlew` executable:
```bash
chmod +x gradlew
```
3. Then call
```bash
./gradlew build
```
(this may take a while if you do it for the first time, next time it will be faster)
This will create a folder called `build`. The starting page of this website is now at `build/site/index.html`
4. Open `build/site/index.html` with your favourite browser:
e.g. 
```bash
firefox ./build/site/index.html
``` 
or 
```bash
google-chrome ./build/site/index.html
```
5. If you make any changes, you first have to call `gradlew build` again (see step 3) and in your browser reload the page.
