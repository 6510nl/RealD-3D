clear
java -jar KickAss.jar -showmem ../sources/main-left.asm
perl 1541u2.pl u64 -c run:../sources/main-left.prg

read -rsp $'Press any key to continue...\n' -n1 key

# ./fastloop.sh

java -jar KickAss.jar -showmem ../sources/main-right.asm
perl 1541u2.pl u64 -c run:../sources/main-right.prg

read -rsp $'Press any key to continue...\n' -n1 key

./fastloop.sh

