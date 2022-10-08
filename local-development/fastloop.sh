java -jar KickAss.jar -showmem ../sources/main-left.asm
java -jar KickAss.jar -showmem ../sources/main-right.asm
flatpak run net.sf.VICE -autostart ../sources/main-left.prg -autostart-warp
flatpak run net.sf.VICE -autostart ../sources/main-right.prg -autostart-warp
