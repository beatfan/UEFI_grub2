# 说明
  UEFI启动是fat/fat32分区/EFI/Boot/bootia32.efi或者/EFI/Boot/bootx64.efi，然后进程由UEFI交给efi程序，我们就是制作这个efi程序，使用grub-mkimage命令即可生成。
 efi程序中需要内置配置文件，类似grub的grldr文件，一旦生成后就很难修改了，所以，我们需要一个类似与menu.lst的配置文件，所以我们指定的配置文件中指向外部的cfg配置文件

# 生成EFI 的 grub启动项

1. grub-2.02-for-windows/make-your-own-EFI.bat 为自制efi版grub2的脚本，其配置文件为x86_64-efi.cfg (会根据这个配置文件来生成efi文件,这个配置文件定义了生成的efi文件将要到哪个目录去搜寻grub的配置文件)

x86_64-efi.cfg文件示例:

```
search.file /EFI/grub/x64.cfg root  
set prefix=($root)/EFI/grub  
configfile ($root)/EFI/grub/x64.cfg  
```

![001][1]

2. 运行make-your-own-EFI.bat即可生成z_bootx64.efi，将其改名为bootx64.efi，放到esp分区/EFI/boot/bootx64.efi，

生成命令：
```
grub-mkimage.exe -d x86_64-efi -c x86_64-efi.cfg -p /EFI/grub -o z_bootx64.efi -O x86_64-efi part_gpt part_msdos disk fat exfat ext2 ntfs xfs appleldr hfs iso9660 normal search_fs_file configfile linux linux16 chain loopback echo efi_gop efi_uga video_bochs video_cirrus file gfxmenu gfxterm gfxterm_background gfxterm_menu halt reboot help jpeg ls png true 
```
-d 表示指定查找模块目录
-c 表示指定配置文件，这个配置文件会集成到efi文件内，就是我们刚刚编写的x86_64-efi.cfg
-p 设置偏好文件夹，cfg文件中会调
-o 表示生成的目标文件
-O 表示集成的模块


3. 复制locale (地区语言) 和x86_64-efi (模块目录)以及unicode.pf2(字体) background.jpg (背景图片)到/EFI/boot/

4. 这样定制的efi文件就完成了 但是这时还差一个grub的配置文件(也就是你的x86_64-efi.cfg 文件中定义efi去搜寻的(grub2)配置文件,默认的是x64.cfg 文件
5.  接下来是定制你自己的grub2文件(x64.cfg ),你可以参考Demo中的文件来定义

## 整个EFI引导目录如下：

FAT/FAT32

#########################
/EFI/Boot/bootx64.efi
/EFI/grub/x64.cfg

/EFI/grub/unicode.pf2

/EFI/grub/x86_64-efi/

/EFI/grub/locale/

#####################

# 直接使用Demo

1. EFI文件夹为Demo文件夹，可以直接将其拷贝到ESP分区（第一个FAT/FAT32分区）根目录，即可启动EFI版grub2，/EFI/grub/x64.cfg为其配置文件，内部包含启动efi，启动windows，启动linux以及安装Ubuntu范例，可自行修改菜单


  [1]: ./images/1515334578820.jpg
  
## Demo 待完善的功能
1.  支持windows
2. 支持super_grub2_disk_hybrid_2.02s9.iso  (可以自动搜寻磁盘里的系统  然后引导 并且可以使用iso启动)