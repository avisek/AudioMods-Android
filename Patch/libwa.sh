if [ "$(id -u)" != "0" ]; then
  echo "This script must be run as root" 1>&2
  exit 1
fi
mount -o rw,remount /
mount -o rw,remount /vendor

if [ -f /system/lib/libstdc++.so ] && [ ! -f /vendor/lib/libstdc++.so ]; then
  cp /system/lib/libstdc++.so /system/vendor/lib/libstdc++.so
  echo "Copied from /system to /vendor"
elif [ -f /vendor/lib/libstdc++.so ] && [ ! -f /system/lib/libstdc++.so ]; then
  cp /vendor/lib/libstdc++.so /system/lib/libstdc++.so
  echo "Copied from /vendor to /system"
fi

echo "Done"
