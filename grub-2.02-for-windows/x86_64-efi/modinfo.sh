#!/bin/sh

# User-controllable options
grub_modinfo_target_cpu=x86_64
grub_modinfo_platform=efi
grub_disk_cache_stats=0
grub_boot_time_stats=0
grub_have_font_source=1

# Autodetected config
grub_have_asm_uscore=0
grub_bss_start_symbol=""
grub_end_symbol=""

# Build environment
grub_target_cc='x86_64-w64-mingw32-gcc'
grub_target_cc_version='x86_64-w64-mingw32-gcc (GCC) 6.2.1 20161118'
grub_target_cflags='-g -Os -Wall -W -Wshadow -Wpointer-arith -Wundef -Wchar-subscripts -Wcomment -Wdeprecated-declarations -Wdisabled-optimization -Wdiv-by-zero -Wfloat-equal -Wformat-extra-args -Wformat-security -Wformat-y2k -Wimplicit -Wimplicit-function-declaration -Wimplicit-int -Wmain -Wmissing-braces -Wmissing-format-attribute -Wmultichar -Wparentheses -Wreturn-type -Wsequence-point -Wshadow -Wsign-compare -Wswitch -Wtrigraphs -Wunknown-pragmas -Wunused -Wunused-function -Wunused-label -Wunused-parameter -Wunused-value  -Wunused-variable -Wwrite-strings -Wnested-externs -Wstrict-prototypes -g -Wredundant-decls -Wmissing-prototypes -Wmissing-declarations  -Wextra -Wattributes -Wendif-labels -Winit-self -Wint-to-pointer-cast -Winvalid-pch -Wmissing-field-initializers -Wnonnull -Woverflow -Wvla -Wpointer-to-int-cast -Wstrict-aliasing -Wvariadic-macros -Wvolatile-register-var -Wpointer-sign -Wmissing-include-dirs -Wmissing-prototypes -Wmissing-declarations -Wformat=2 -m64 -freg-struct-return -mno-mmx -mno-sse -mno-sse2 -mno-sse3 -mno-3dnow -msoft-float -fno-dwarf2-cfi-asm -fno-reorder-functions -mno-stack-arg-probe -fno-asynchronous-unwind-tables -fno-unwind-tables -mcmodel=large -mno-red-zone -Qn -fno-PIC -fno-stack-protector -Wtrampolines -Werror'
grub_target_cppflags='-D_FORTIFY_SOURCE=2 -Wall -W  -DGRUB_MACHINE_EFI=1 -DGRUB_MACHINE=X86_64_EFI -m64 -I$(top_srcdir)/include -I$(top_builddir)/include'
grub_target_ccasflags=' -g  -m64 -msoft-float'
grub_target_ldflags=' -m64 -Wl,-mi386pep'
grub_cflags=''
grub_cppflags='-D_FORTIFY_SOURCE=2 -D_FILE_OFFSET_BITS=64 -DUNICODE=1 -D_WIN32_WINNT=0x0500'
grub_ccasflags=''
grub_ldflags=''
grub_target_strip='x86_64-w64-mingw32-strip'
grub_target_nm='x86_64-w64-mingw32-nm'
grub_target_ranlib='ranlib'
grub_target_objconf=''
grub_target_obj2elf='./build-grub-pep2elf$(BUILD_EXEEXT)'
grub_target_img_base_ldopt='-Wl,-Ttext'
grub_target_img_ldflags='@TARGET_IMG_BASE_LDFLAGS@'

# Version
grub_version="2.02"
grub_package="grub"
grub_package_string="GRUB 2.02"
grub_package_version="2.02"
grub_package_name="GRUB"
grub_package_bugreport="bug-grub@gnu.org"
