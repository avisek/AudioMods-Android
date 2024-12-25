if [ "$(id -u)" != "0" ]; then
  echo "This script must be run as root" 1>&2
  exit 1
fi
mount -o rw,remount /
mount -o rw,remount /vendor

echo "persist.audio.dirac.speaker=true" >> /vendor/build.prop
echo "sys.keep_app_1=com.xiaomi.parts" >> /system/build.prop

echo "sys.keep_app_2=com.dolby" >> /system/build.prop
echo "sys.keep_app_3=com.dolby.ds1appUI" >> /system/build.prop

echo "Done"
