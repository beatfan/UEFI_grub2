grub-mkimage.exe -d x86_64-efi -c x86_64-efi.cfg -o z_bootx64.efi -O x86_64-efi part_gpt part_msdos disk fat exfat ext2 ntfs xfs appleldr hfs iso9660 normal search_fs_file configfile linux linux16 chain loopback echo efi_gop
 efi_uga 
video_bochs 
video_cirrus
  file fs gfxmenu gfxterm gfxterm_background gfxterm_menu halt reboot help jpeg ls png true