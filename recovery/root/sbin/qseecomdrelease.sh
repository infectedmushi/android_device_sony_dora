#!/sbin/sh

# Release qseecomd
if [ -f /sbin/libc_original.so ]; then
  cp -f /sbin/libc_original.so /sbin/libc.so;
fi;
