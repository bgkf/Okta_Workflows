###<b>Weekly check for computers in Jamf Protect with a check-in date greater than 30 days.</b><br>

1. Create a list of all computers in Jamf Protect with a check-in date greater than 30 days.<br>
  Note: the max page size is 200 opjects.<br>
  a. Get a list of all objects in the first page.<br>
  b. Get the nextPage token.<br>
  c. Get a list of all objects in the next page.<br>
  d. Check if there is another nextPage token and send a message to Slack if there is.<br>
  e. Combine the lists of objects from each page into one list.<br>
  f. Get the date and filter the list for computers with a check-in date greater than 30 days ago.
  g. Send each object in the filtered list to a helper workflow.<br>
<br>
<img width="1000"  alt="checkin 1.1" src="https://github.com/user-attachments/files/16228445/CheckIn.30.Days.1.-.1.pdf"><br>
<img width="1000"  alt="checkin 1.2" src="https://github.com/user-attachments/files/16228446/CheckIn.30.Days.1.-.2.pdf"><br>
<img width="1000"  alt="checkin 1.3" src="https://github.com/user-attachments/files/16228447/CheckIn.30.Days.1.-.3.pdf"><br>
<img width="1000"  alt="checkin 1.4" src="https://github.com/user-attachments/files/16228448/CheckIn.30.Days.1.-.4.pdf">
<br>

2. Check if the computer should be deleted from Jamf Protect. <br>
  a. Check if the computer exists in Jamf Pro.<br>
  b. Check if the computer is deployed in Snipe.<br>
  c. If the computer does not exist in Jamf Pro and is not deployed in Snipe then delete the computer fro Jam Protect.<br>
  d. If the computer does exist in Jamf Pro send a message to Slack (not pictured).<br>
  <br>
<img width="1000"  alt="checkin 2.1" src="https://github.com/user-attachments/files/16228492/CheckIn.30.Days.2.-.1.pdf">
<img width="1000"  alt="checkin 2.2" src="https://github.com/user-attachments/files/16228493/CheckIn.30.Days.2.-.2.pdf">
<img width="1000"  alt="checkin 2.3" src="https://github.com/user-attachments/files/16228494/CheckIn.30.Days.2.-.3.pdf">
<br><br>
