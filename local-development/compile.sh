# Make sure that JAVA is installed
# sudo apt --yes install openjdk-11-jre

java -jar KickAss.jar -showmem ../sources/main-left.asm
java -jar KickAss.jar -showmem ../sources/main-right.asm
perl 1541u2.pl 1541u2-00 -c main-left.prg
perl 1541u2.pl 1541u2-01 -c main-right.prg
