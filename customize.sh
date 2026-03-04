#!/system/bin/sh
#
# Copyright 2025 PASA
# All rights reserved.
#
# This file is part of a proprietary Magisk module.
# Unauthorized copying, modification, or distribution of this file,
# via any medium, is strictly prohibited.

SKIPUNZIP=0
MODPATH="/data/adb/modules/AIonix"

ui_print "══════════════════════════════════════════"
ui_print "          Project AIonix V2.4"
ui_print "          Developer: PASA"
ui_print "══════════════════════════════════════════"
ui_print ""
sleep 1

ui_print "[*] Initializing installation..."
sleep 0.5

ui_print "[*] Removing bloatware..."
pm uninstall --user 0 com.samsung.android.fast > /dev/null 2>&1
pm uninstall --user 0 com.samsung.android.samsungpass > /dev/null 2>&1
pm uninstall --user 0 com.samsung.android.ipsgeofence > /dev/null 2>&1
pm uninstall --user 0 com.samsung.android.kidsinstaller > /dev/null 2>&1
pm uninstall --user 0 com.microsoft.skydrive > /dev/null 2>&1
pm uninstall --user 0 com.samsung.android.dynamiclock > /dev/null 2>&1
pm uninstall --user 0 com.samsung.android.bbc.bbcagent > /dev/null 2>&1
pm uninstall --user 0 com.samsung.android.app.spage > /dev/null 2>&1
pm uninstall --user 0 com.android.cts.priv.ctsshim > /dev/null 2>&1
pm uninstall --user 0 com.android.cts.ctsshim > /dev/null 2>&1
pm uninstall --user 0 com.facebook.system > /dev/null 2>&1
pm uninstall --user 0 com.facebook.services > /dev/null 2>&1
pm uninstall --user 0 com.facebook.appmanager > /dev/null 2>&1
pm uninstall --user 0 com.samsung.android.spaymini > /dev/null 2>&1
pm uninstall --user 0 com.dsi.ant.server > /dev/null 2>&1
pm uninstall --user 0 com.samsung.knox.keychain > /dev/null 2>&1
pm uninstall --user 0 com.sec.android.app.factorykeystring > /dev/null 2>&1
pm uninstall --user 0 com.snap.camerakit.plugin.v1 > /dev/null 2>&1
pm uninstall --user 0 com.sec.android.widgetapp.webmanual > /dev/null 2>&1
pm uninstall --user 0 com.sec.android.soagent > /dev/null 2>&1
pm uninstall --user 0 com.samsung.android.securitylogagent > /dev/null 2>&1
pm uninstall --user 0 com.samsung.android.samsungpassautofill > /dev/null 2>&1
pm uninstall --user 0 com.sec.android.app.chromecustomizations > /dev/null 2>&1
pm uninstall --user 0 com.aura.oobe.samsung.gl > /dev/null 2>&1
pm uninstall --user 0 com.samsung.android.app.updatecenter > /dev/null 2>&1
pm uninstall --user 0 com.sec.android.app.parser > /dev/null 2>&1
pm uninstall --user 0 com.samsung.android.app.simplesharing > /dev/null 2>&1
pm uninstall --user 0 com.dsi.ant.service.socket > /dev/null 2>&1
pm uninstall --user 0 com.android.managedprovisioning > /dev/null 2>&1
pm uninstall --user 0 com.sec.android.preloadinstaller > /dev/null 2>&1
pm uninstall --user 0 com.samsung.android.app.sbrowseredge > /dev/null 2>&1
pm uninstall --user 0 com.microsoft.office.officehubrow > /dev/null 2>&1
pm uninstall --user 0 com.monotype.android.font.samsungone > /dev/null 2>&1
pm uninstall --user 0 flipboard.boxer.app > /dev/null 2>&1
pm uninstall --user 0 com.mygalaxy > /dev/null 2>&1
pm uninstall --user 0 com.samsung.android.emojiupdater > /dev/null 2>&1
pm uninstall --user 0 com.sec.factory > /dev/null 2>&1
pm uninstall --user 0 com.sec.android.app.billing > /dev/null 2>&1
pm uninstall --user 0 com.samsung.android.app.omcagent > /dev/null 2>&1
pm uninstall --user 0 com.android.dreams.phototable > /dev/null 2>&1
pm uninstall --user 0 com.google.android.setupwizard > /dev/null 2>&1
pm uninstall --user 0 com.samsung.faceservice > /dev/null 2>&1
pm uninstall --user 0 com.samsung.android.coldwalletservice > /dev/null 2>&1
pm uninstall --user 0 com.sec.android.diagmonagent > /dev/null 2>&1
pm uninstall --user 0 com.wssyncmldm > /dev/null 2>&1
pm uninstall --user 0 com.samsung.android.mdm > /dev/null 2>&1
pm uninstall --user 0 com.sec.android.app.ve.vebgm > /dev/null 2>&1
pm uninstall --user 0 com.samsung.android.app.separation > /dev/null 2>&1
pm uninstall --user 0 com.amazon.appmanager > /dev/null 2>&1
pm uninstall --user 0 com.samsung.android.mapsagent > /dev/null 2>&1
pm uninstall --user 0 com.samsung.android.app.earphonetypec > /dev/null 2>&1
pm uninstall --user 0 com.google.android.feedback > /dev/null 2>&1
pm uninstall --user 0 com.android.bookmarkprovider > /dev/null 2>&1
pm uninstall --user 0 com.google.mainline.telemetry > /dev/null 2>&1
pm uninstall --user 0 com.android.internal.display.cutout.emulation.waterfall > /dev/null 2>&1
pm uninstall --user 0 com.google.android.onetimeinitializer > /dev/null 2>&1
pm uninstall --user 0 com.sec.android.widgetapp.easymodecontactswidget > /dev/null 2>&1
pm uninstall --user 0 com.sec.enterprise.knox.cloudmdm.smdms > /dev/null 2>&1
pm uninstall --user 0 com.samsung.android.knox.analytics.uploader > /dev/null 2>&1
pm uninstall --user 0 com.sec.android.app.wlantest > /dev/null 2>&1
pm uninstall --user 0 com.samsung.android.voc > /dev/null 2>&1
pm uninstall --user 0 com.samsung.android.samsunganalytics.agent > /dev/null 2>&1
pm uninstall --user 0 com.sec.spp.push > /dev/null 2>&1
pm uninstall --user 0 com.samsung.android.mateagent > /dev/null 2>&1
pm uninstall --user 0 com.samsung.android.rlc > /dev/null 2>&1

ui_print "[*] Restoring security service..."
pm install-existing --user 0 com.samsung.android.sm.devicesecurity > /dev/null 2>&1

ui_print "[*] Clearing cache..."
rm -rf /cache/* > /dev/null 2>&1
rm -rf /data/cache/* > /dev/null 2>&1
rm -rf /data/dalvik-cache/* > /dev/null 2>&1
rm -rf /data/system/package_cache/* > /dev/null 2>&1

wm density 488

ui_print "[*] Deploying audio files..."
rm -rf /sdcard/Music > /dev/null 2>&1
mkdir -p /sdcard/Music
cp -r "$MODPATH/system/hidden/INTERNAL_SDCARD/Music/Samsung" /sdcard/Music/ > /dev/null 2>&1

ui_print ""
ui_print "══════════════════════════════════════════"
ui_print "[✓] Installation completed successfully"
ui_print "[!] Reboot required to apply changes"
ui_print "══════════════════════════════════════════"
ui_print ""
ui_print "Developed by aliysnm - DO NOT MIRROR"