#!/sbin/sh

# Prepare qseecomd
if [ -f /sbin/libc_qseecomd.so ] && [ ! -f /sbin/libc_original.so ]; then
  rm -f /sbin/qseecomd.ready;
  rm -f /sbin/libc_original.so;
  cp -f /sbin/libc.so /sbin/libc_original.so;
  cp -f /sbin/libc_qseecomd.so /sbin/libc.so;
  chmod 750 /sbin/libc.so;
fi;

# Trigger qseecomd
touch /sbin/qseecomd.ready;
