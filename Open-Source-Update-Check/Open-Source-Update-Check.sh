#! /bin/zsh

# Notify IT team when there is an update to a tool we use.
# Things like Superman, Dockutil, 1Password SCIM Bridge, Hombrew install script
# Not applications.
# send the data to okta workflows on a schedule. 

# workflow 
workflowURL="https://SUBDOMAIN.SUBDOMAIN.okta.com/api/flo/ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890/invoke?clientToken=ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

# Get the current version of Superman
Superman_Current=$(curl -fs "https://github.com/Macjutsu/super/releases/" | grep "/Macjutsu/super/tree" | awk 'NR==1{print}' | cut -d '"' -f2 | sed 's/.*v//' )

# Get the current version of the Kandji Hombrew install script
Hombrew_Current=$(curl -fs "https://raw.githubusercontent.com/kandji-inc/support/main/Scripts/InstallHomebrew.zsh" | grep -A 1 "# Script version" | awk 'NR==2{print}' | cut -d '"' -f2 )

# get the current version of the 1Password SCIM Bridge
onePSB_Current=$(curl -fs https://app-updates.agilebits.com/product_history/SCIM | grep "&nbsp;(build <a href=" | awk 'NR==1{print $4}' | cut -d'"' -f2)

# get the current version of Installomator
Installomator_Current=$(curl -fs "https://github.com/Installomator/Installomator/releases" | grep "/Installomator/Installomator/tree/v" | awk 'NR==1{print}' | cut -d '"' -f2 | sed 's/.*v//' )

# get the current version of the Kandji xcode-cli-tools-installer
xcodecli_Update_Date=$(curl -fs "https://raw.githubusercontent.com/kandji-inc/support/main/Scripts/xcode-cli-tools-installer/xcode_cli_tools_installer.zsh" | grep "Updated - " | awk 'NR==1{print $4}' )

# get the current version of the SAP Privileges app
Privileges_Current=$(curl -fs "https://github.com/SAP/macOS-enterprise-privileges/releases" | grep "/SAP/macOS-enterprise-privileges/tree/" | awk 'NR==1{print}' | cut -d '"' -f2 | sed 's/.*\///' )

# JSON data
data='[{"Tool": "Superman", "Version": "'$Superman_Current'", "Source": "https://github.com/Macjutsu/super/blob/main/super"}, 
{"Tool": "Homebrew_Install_Script", "Version": "'$Hombrew_Current'", "Source": "https://github.com/kandji-inc/support/blob/main/Scripts/InstallHomebrew.zsh"},
{"Tool": "1Password_SCIM_Bridge", "Version": "'$onePSB_Current'", "Source": "https://support.1password.com/scim-update/", "Source": "https://github.com/1Password/scim-examples"},
{"Tool": "Installomator", "Version": "'$Installomator_Current'", "Source": "https://github.com/Installomator/Installomator/blob/main/Installomator.sh"},
{"Tool": "xcodecli_cli_tools", "Version": "'$xcodecli_Update_Date'", "Source": "https://github.com/kandji-inc/support/blob/main/Scripts/xcode-cli-tools-installer/xcode_cli_tools_installer.zsh"},
{"Tool": "SAP-Privileges", "Version": "'$Privileges_Current'", "Source": "https://github.com/SAP/macOS-enterprise-privileges/releases/tag/'$Privileges_Current'"}
]'

echo $data

# send serial number to okta workflow
/usr/bin/curl -s -X POST $workflowURL -H "Content-Type:application/json" --data "$data"
