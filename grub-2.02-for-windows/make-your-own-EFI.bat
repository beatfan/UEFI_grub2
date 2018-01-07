:: 1、EFI文件夹为Demo文件夹，可以直接将其拷贝到ESP分区（第一个FAT/FAT32分区）根目录，即可启动EFI版grub2，/EFI/grub/x64.cfg为其配置文件，内部包含启动efi，启动windows，启动linux以及安装Ubuntu范例，可自行修改菜单

:: 2、MakeOwnEFI为自制efi版grub2的脚本，解压grub-2.02-for-windows.zip后，将makeEfi.bat和x86_64-efi.cfg放到其中exe命令同级目录下，运行makeEfi.bat即可生成z_bootx64.efi，将其改名为bootx64.efi，放到esp分区/EFI/boot/bootx64.efi，会自动搜索/EFI/grub/x64.cfg配置文件，x64.cfg可自行编写，也可以从demo中修改。除此之外，还需要复制locale和x86_64-efi文件夹以及unicode.pf2字体，若是需要背景图片，将其放到/EFI/grub下，命名为background.jpg


grub-mkimage.exe -d x86_64-efi -c x86_64-efi.cfg -p /EFI/linux -o z_bootx64.efi -O x86_64-efi part_gpt part_msdos disk fat exfat ext2 ntfs xfs appleldr hfs iso9660 normal search_fs_file configfile linux linux16 chain loopback echo efi_gop efi_uga video_bochs video_cirrus file gfxmenu gfxterm gfxterm_background gfxterm_menu halt reboot help jpeg ls png true