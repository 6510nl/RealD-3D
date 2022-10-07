# Make sure that JAVA is installed
# sudo apt --yes install openjdk-11-jre

#echo "compiling -left"
#time java -jar KickAss.jar -showmem ../sources/main-left.asm
#echo "compiling -right"
#time java -jar KickAss.jar -showmem ../sources/main-right.asm

#echo "deploying -left"
time perl 1541u2.pl 1541u2-00 -c run:../sources/$1
#echo "deploying -right"
time perl 1541u2.pl 1541u2-01 -c run:../sources/$2
