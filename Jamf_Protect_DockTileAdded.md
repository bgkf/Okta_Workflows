### Auto-resolve DockTileAdded Alerts ###

There are some apps that trigger the Jamf Protect DockTileAdded alert each time they update. 

- The [NSDockTilePlugin protocol](developer.apple.com/documentation/appkit/nsdocktileplugin) allows applications to customize the Dock tile when the application is not running. The DockTileAdded alert enhances visibility for unrecognized or untrusted applications set a new dock tile or get the dock tile menu.

- MITREattack<br>
  - Persistence<br>
  - BootOrLogonAutostartExecution<br>
  - T1547

The goal of this process is to exclude these alerts from the standard alert process, without disabling the alert, and to remove the manual task of reviewing each alert while maintaining awareness of each alert.

The process....
1. When the alert is triggered the computer is added to a Jamf Pro Smart Group.
2. A webhook in Jamf Pro registers the change in the Smart Group membership and triggers an Okta Workflow.
3. The workflow process (screenshots below).<br>
  a. Check if a computer was added to the smart group.<br>
  b. Get the computer UDID.<br>
  c. Get today alerts.<br>
  d. Find the first alert that match the computer UDID. (ToDo: add error checking)<br>
  e. Check that it is a DockTileAdded alert.<br>
  f. Get the alert details.<br>
  g. Update the alert - set the status to resolved.<br>
  h. Notify via Slack.
4. The smart group is scoped to a policy that executes a script to remove the computer from the smart group, initiate a Jamf Protect check-in and a Jamf Pro inventory update. 
<br>
<img width="2402" height="743" alt="Protect-DockTileAdded 1" src="https://github.com/user-attachments/assets/d3677fbd-0b50-4c1e-ba82-ce3a0599a77c" /><br>
<img width="2406" height="551" alt="Protect-DockTileAdded 2" src="https://github.com/user-attachments/assets/12ceac6a-af24-4818-ab3f-61fc91646d3a" /><br>
<img width="2402" height="787" alt="Protect-DockTileAdded 3" src="https://github.com/user-attachments/assets/5663dde3-3a20-405a-8186-e81423d4d3c3" /><br>
<img width="2398" height="489" alt="Protect-DockTileAdded 4" src="https://github.com/user-attachments/assets/dc95f8ba-b4ed-4dca-b71d-f4c5d60f864d" /><br>
<img width="2408" height="688" alt="Protect-DockTileAdded 5" src="https://github.com/user-attachments/assets/3645b87e-3916-4181-9d21-98ff6d7c84fd" /><br>
<img width="2002" height="688" alt="Protect-DockTileAdded 6" src="https://github.com/user-attachments/assets/e32b8610-d22d-4682-a485-997f5c7ed034" />
