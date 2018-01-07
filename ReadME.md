# 生成EFI 的 grub启动项

1. grub-2.02-for-windows/make-your-own-EFI.bat 为自制efi版grub2的脚本，其配置文件为x86_64-efi.cfg (会根据这个配置文件来生成efi文件,这个配置文件定义了生成的efi文件将要到哪个目录去搜寻grub的配置文件)

2. 运行make-your-own-EFI.bat即可生成z_bootx64.efi，将其改名为bootx64.efi，放到esp分区/EFI/boot/bootx64.efi，

3. 复制locale和x86_64-efi文件夹以及unicode.pf2(字体) background.jpg (背景图片)到/EFI/boot/

# 直接使用Demo

1. EFI文件夹为Demo文件夹，可以直接将其拷贝到ESP分区（第一个FAT/FAT32分区）根目录，即可启动EFI版grub2，/EFI/grub/x64.cfg为其配置文件，内部包含启动efi，启动windows，启动linux以及安装Ubuntu范例，可自行修改菜单
