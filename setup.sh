#!/sbin/sh

###########################
# MMT Reborn Logic
###########################

############
# Config Vars
############

# Uncomment if you want to skip mount for your module
#SKIPMOUNT=true
# Uncomment if you want to clean old files in module before injecting new module
CLEANSERVICE=true
# Uncomment if you want to load vskel after module info print. If you want to manually load it, consider using load_vksel function
#AUTOVKSEL=true
# Uncomment DEBUG if you want store debug logs of installation
DEBUG=true


############
# Replace List
############

# List all directories you want to directly replace in the system
# Construct your list in the following example format
REPLACE_EXAMPLE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"
# Construct your own list here
REPLACE="
"

############
# Cleanup
############

# Remove unnecessary stuff
do_cleanup(){
  rmtouch "$MODPATH/system/placeholder"
}

############
# Permissions
############

# Set permissions
set_permissions(){
  set_perm_recursive "$MODPATH" 0 0 0755 0644
  set_perm_recursive "$MODPATH/system/$bin" 0 0 0755 0777
}

############
# Info Print
############

# Set what you want to be displayed on header of installation process
info_print(){
  ui_print "**************************************"
  ui_print "*    Magisk Busybox Installer      *"
  ui_print "**************************************"
  ui_print ""
  ui_print "Systemlessly install magisk busybox into android system"
  ui_print ""
  sleep 1.5
}

############
# Main
############

# Change the logic to whatever you want
int_main(){
  ui_print "[*] Installing magisk busybox to system..."
  ui_print ""
  sleep 1.5
  ui_print "[*] Setting up executable permissions..."
  sleep 1
  ui_print ""
  ui_print "[*] Cleaning up..."
  ui_print ""
  sleep 1
  ui_print "[*] Done!"
  ui_print ""
  sleep 1.5
  ui_print " --- Notes --- "
  ui_print ""
  ui_print "[*] Reboot is required"
  ui_print ""
  ui_print "[*] Report issues to @loopchats on Telegram"
  ui_print ""
  ui_print "[*] You can find me at iamloooper @ Telegram for direct support"
  sleep 4
}