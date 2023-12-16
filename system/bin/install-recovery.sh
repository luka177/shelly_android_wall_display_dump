#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11120000.msdc0/by-name/recovery:11976960:4cf8ad8d9d76cdece7376a0b69f74d127fc6d540; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11120000.msdc0/by-name/boot:10082560:ba526426bd593e46629b4d4eb2c74fcf9ab93d1c EMMC:/dev/block/platform/mtk-msdc.0/11120000.msdc0/by-name/recovery 4cf8ad8d9d76cdece7376a0b69f74d127fc6d540 11976960 ba526426bd593e46629b4d4eb2c74fcf9ab93d1c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
