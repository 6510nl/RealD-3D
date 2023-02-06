perl 1541u2.pl 1541u2-00 -c run:/home/berry/Documents/Stack/l.prg
perl 1541u2.pl 1541u2-01 -c run:/home/berry/Documents/Stack/r.prg
read -rsp $'Press any key to continue...\n' -n1 key

perl 1541u2.pl 1541u2-00 -c run:/home/berry/Documents/Stack/r.prg
perl 1541u2.pl 1541u2-01 -c run:/home/berry/Documents/Stack/l.prg
read -rsp $'Press any key to continue...\n' -n1 key

./$0
