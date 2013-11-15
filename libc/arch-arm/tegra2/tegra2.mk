$(call libc-add-cpu-variant-src,MEMCPY,arch-arm/cortex-a9/bionic/memcpy.S)
$(call libc-add-cpu-variant-src,MEMSET,arch-arm/tegra2/bionic/memset.S)
$(call libc-add-cpu-variant-src,MEMMOVE,bionic/memmove.c.arm)
$(call libc-add-cpu-variant-src,STRCAT,string/strcat.c)

# armv7-a (non neon) ones from cm10.1
$(call libc-add-cpu-variant-src,STRLEN,arch-arm/tegra2/bionic/strlen.S)
$(call libc-add-cpu-variant-src,MEMCHR,arch-arm/tegra2/bionic/memchr.S)

include bionic/libc/arch-arm/generic/generic.mk
