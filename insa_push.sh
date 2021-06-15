./gradlew build && rsync -avcp --chmod=o+rx,g+rwx,u+rwx build/site/ urspeter@httpd.coli.uni-saarland.de:/web/www.coli.uni-saarland.de/html/fs-lst/
