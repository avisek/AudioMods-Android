if [ "$(id -u)" != "0" ]; then
  echo "This script must be run as root" 1>&2
  exit 1
fi
mount -o rw,remount /
mount -o rw,remount /vendor

# cp -vRL system/ /system/
# cp -vRL vendor/ /vendor/

cp_ch() {
  cp -Lv "$1" "$2"
  chown "$3:$4" "$2"
  chmod "$5" "$2"
}

mk_ch() {
  mkdir "$1"
  chown "$2:$3" "$1"
  chmod "$4" "$1"
}

cp_ch system/etc/audio_effects.conf /system/etc/audio_effects.conf 0 0 644
cp_ch system/etc/ds1-default.xml /system/etc/ds1-default.xml 0 0 644
cp_ch system/etc/permissions/android.dolby.xml /system/etc/permissions/android.dolby.xml 0 0 644

cp_ch system/framework/dolby_ds.jar /system/framework/dolby_ds.jar 0 0 644

mk_ch /system/priv-app/XiaomiParts 0 0 755
cp_ch system/priv-app/XiaomiParts/XiaomiParts.apk /system/priv-app/XiaomiParts/XiaomiParts.apk 0 0 644


cp_ch vendor/etc/a2dp_in_audio_policy_configuration.xml /vendor/etc/a2dp_in_audio_policy_configuration.xml 0 0 644
cp_ch vendor/etc/audio_effects.xml /vendor/etc/audio_effects.xml 0 0 644
cp_ch vendor/etc/audio_policy_configuration.xml /vendor/etc/audio_policy_configuration.xml 0 0 644
cp_ch vendor/etc/audio_policy_volumes.xml /vendor/etc/audio_policy_volumes.xml 0 0 644
cp_ch vendor/etc/bluetooth_audio_policy_configuration.xml /vendor/etc/bluetooth_audio_policy_configuration.xml 0 0 644
cp_ch vendor/etc/default_volume_tables.xml /vendor/etc/default_volume_tables.xml 0 0 644
cp_ch vendor/etc/diracmobile.config /vendor/etc/diracmobile.config 0 0 644
cp_ch vendor/etc/r_submix_audio_policy_configuration.xml /vendor/etc/r_submix_audio_policy_configuration.xml 0 0 644
cp_ch vendor/etc/usb_audio_policy_configuration.xml /vendor/etc/usb_audio_policy_configuration.xml 0 0 644


cp_ch vendor/etc/usb_audio_policy_configuration.xml /vendor/etc/usb_audio_policy_configuration.xml 0 0 644

cp_ch vendor/lib/libDiracAPI_SHARED.so /vendor/lib/libDiracAPI_SHARED.so 0 0 644
cp_ch vendor/lib/libstagefright_soft_ac4dec.so /vendor/lib/libstagefright_soft_ac4dec.so 0 0 644
cp_ch vendor/lib/libstagefright_soft_ddpdec.so /vendor/lib/libstagefright_soft_ddpdec.so 0 0 644


cp_ch vendor/lib/soundfx/libasphere.so /vendor/lib/soundfx/libasphere.so 0 0 644
cp_ch vendor/lib/soundfx/libdirac.so /vendor/lib/soundfx/libdirac.so 0 0 644
cp_ch vendor/lib/soundfx/libdynproc.so /vendor/lib/soundfx/libdynproc.so 0 0 644
cp_ch vendor/lib/soundfx/libqcbassboost.so /vendor/lib/soundfx/libqcbassboost.so 0 0 644
cp_ch vendor/lib/soundfx/libqcomvoiceprocessing.so /vendor/lib/soundfx/libqcomvoiceprocessing.so 0 0 644
cp_ch vendor/lib/soundfx/libreverbwrapper.so /vendor/lib/soundfx/libreverbwrapper.so 0 0 644
cp_ch vendor/lib/soundfx/libaudiopreprocessing.so /vendor/lib/soundfx/libaudiopreprocessing.so 0 0 644
cp_ch vendor/lib/soundfx/libdownmix.so /vendor/lib/soundfx/libdownmix.so 0 0 644
cp_ch vendor/lib/soundfx/libeffectproxy.so /vendor/lib/soundfx/libeffectproxy.so 0 0 644
cp_ch vendor/lib/soundfx/libqcompostprocbundle.so /vendor/lib/soundfx/libqcompostprocbundle.so 0 0 644
cp_ch vendor/lib/soundfx/libqcreverb.so /vendor/lib/soundfx/libqcreverb.so 0 0 644
cp_ch vendor/lib/soundfx/libvisualizer.so /vendor/lib/soundfx/libvisualizer.so 0 0 644
cp_ch vendor/lib/soundfx/libbundlewrapper.so /vendor/lib/soundfx/libbundlewrapper.so 0 0 644
cp_ch vendor/lib/soundfx/libdseffect.so /vendor/lib/soundfx/libdseffect.so 0 0 644
cp_ch vendor/lib/soundfx/libldnhncr.so /vendor/lib/soundfx/libldnhncr.so 0 0 644
cp_ch vendor/lib/soundfx/libqcomvisualizer.so /vendor/lib/soundfx/libqcomvisualizer.so 0 0 644
cp_ch vendor/lib/soundfx/libqcvirt.so /vendor/lib/soundfx/libqcvirt.so 0 0 644



cp_ch vendor/lib64/soundfx/libaudiopreprocessing.so /vendor/lib64/soundfx/libaudiopreprocessing.so 0 0 644
cp_ch vendor/lib64/soundfx/libdownmix.so /vendor/lib64/soundfx/libdownmix.so 0 0 644
cp_ch vendor/lib64/soundfx/libeffectproxy.so /vendor/lib64/soundfx/libeffectproxy.so 0 0 644
cp_ch vendor/lib64/soundfx/libqcompostprocbundle.so /vendor/lib64/soundfx/libqcompostprocbundle.so 0 0 644
cp_ch vendor/lib64/soundfx/libqcomvoiceprocessing.so /vendor/lib64/soundfx/libqcomvoiceprocessing.so 0 0 644
cp_ch vendor/lib64/soundfx/libvisualizer.so /vendor/lib64/soundfx/libvisualizer.so 0 0 644
cp_ch vendor/lib64/soundfx/libbundlewrapper.so /vendor/lib64/soundfx/libbundlewrapper.so 0 0 644
cp_ch vendor/lib64/soundfx/libdynproc.so /vendor/lib64/soundfx/libdynproc.so 0 0 644
cp_ch vendor/lib64/soundfx/libldnhncr.so /vendor/lib64/soundfx/libldnhncr.so 0 0 644
cp_ch vendor/lib64/soundfx/libqcomvisualizer.so /vendor/lib64/soundfx/libqcomvisualizer.so 0 0 644
cp_ch vendor/lib64/soundfx/libreverbwrapper.so /vendor/lib64/soundfx/libreverbwrapper.so 0 0 644


echo "Done"
