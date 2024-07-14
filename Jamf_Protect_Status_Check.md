### If a computer has a Jamf Protect Status that is not Protected attempt to remediate the problem and notify IT.<br>

1. The API endpoint is triggered when there is achange in a Jamf Pro smart group.<br>
  a. Computers are added to the smart group when the Jamf Protect Status extension attribute does not equal Protected.<br>
  b. Computers added to a the smart group are sent to the next work flow.<br><br>
<img width="1000"  alt="protected_1" src="https://github.com/user-attachments/files/16228552/Protect.Status.Protected.1.pdf"><br><br>

2. Get the Jamf Protect Status, send a message to Slack and attempt to remediate.<br>
  a. The computer is added to a Jamf Pro static group.<br>
  b. The Static group is scoped to a policy that excludes the computer from the Protect configuration profile.<br>
  c. After 2 minutes the computer is removed from the static group and the Protect configuration profile is re-deployed.<br>
  d. Check the Jamf Protect status, if it is still not protected send a message to Slack and....<br>
  e. The computer is added to another Jamf Pro static group that is scoped to two policies.<br>
  f. One policy runs protectctl cmds and the other updates inventory.<br>
  g. A helper workflow is triggered that loops until the computer updates inventory.<br>
  h. The Jamf Protect status is returned when the loop completes.<br><br>
<img width="1000"  alt="protected_2.1" src="https://github.com/user-attachments/files/16228553/Protect.Status.Protected.2.1.pdf"><br>
<img width="1000"  alt="protected_2.2" src="https://github.com/user-attachments/files/16228554/Protect.Status.Protected.2.2.pdf"><br>
<img width="1000"  alt="protected_2.3" src="https://github.com/user-attachments/files/16228555/Protect.Status.Protected.2.3.pdf"><br>
<img width="1000"  alt="protected_2.4" src="https://github.com/user-attachments/files/16228556/Protect.Status.Protected.2.4.pdf"><br><br>

- The Jamf Protect connectionStatus helper workflow.<br><br>
<img width="1000"  alt="connection_1.1" src="https://github.com/user-attachments/files/16228573/Protect.-.Get.Computer.connectionStatus_1.pdf"><br>
<img width="1000"  alt="connection_1.2" src="https://github.com/user-attachments/files/16228574/Protect.-.Get.Computer.connectionStatus_2.pdf"><br>
<br>

- The Jamf Protect connectionStatus check loop.<br><br>
<img width="1000"  alt="protected_3" src="https://github.com/user-attachments/files/16228557/Protect.Status.Protected.3.pdf"><br>
<br>

- The inventory update check loop.<br><br>
<img width="1000"  alt="protected_4.1" src="https://github.com/user-attachments/files/16228558/Protect.Status.Protected.4.1.pdf"><br>
<img width="1000"  alt="protected_4.2" src="https://github.com/user-attachments/files/16228559/Protect.Status.Protected.4.2.pdf"><br>
