#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:12580864:225c06f52d9e29c4fae3be8f7666b435db4f26e5; then
  applypatch EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:10819584:4dbe4306ed660c1cf50a69ed536b20fdb0485533 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 225c06f52d9e29c4fae3be8f7666b435db4f26e5 12580864 4dbe4306ed660c1cf50a69ed536b20fdb0485533:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
