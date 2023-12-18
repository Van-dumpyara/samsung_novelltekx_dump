#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY:8372224:a2dca14b9e5bdd45fddf8eec10cf440a6883aef7; then
  applypatch EMMC:/dev/block/platform/13540000.dwmmc0/by-name/BOOT:7495680:f19de4d25507b7cf6379ed540a371a9b15c0bb26 EMMC:/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY a2dca14b9e5bdd45fddf8eec10cf440a6883aef7 8372224 f19de4d25507b7cf6379ed540a371a9b15c0bb26:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
