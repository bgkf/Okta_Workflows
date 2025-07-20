### Alert for an Okta Breached Password Event ###

BACKGROUND<br>

Okta receives lists of breached credentials from third parties and compares your user's credentials to this list.
If your user's credentials appear in a list, Okta notifies you by recording the security.breached_credential.detected event in the System Log.<br>

By default, Okta expires the user's credentials and requires the user to reset their password the next time they attempt to sign in with their username and password. The user is blocked from signing in again with their credentials until they change their password.<br>
<br>
WORKFLOW PROCESS OVERVIEW<br>
1. A breached credential event occurs.
2. A Slack thread and help ticket are created.
3. Previous session start events (for the end user) are documented and reported.
4. Monitor for the next end user password change.
<br>

PROCESS DETAILS<br>
1. A breached credential event occurs and triggers the API endpoint.<br>
2. Breached Password Okta Event [1].<br>
  a. API endpoint for the event hook.<br>
3. Breached Password Okta Event [2].<br>
  a. Get the details from the event.<br>
  b. Send a Slack message to the #team-security channel.<br>
  c. Create a help ticket for the end user password change.<br>
  d. Start workflows [3] and [4].<br>
4. Breached Password Okta Event [3]<br>
  a. Loop to confirm the password is changed by the end user.<br>
5. Breached Password Okta Event [4]<br>
  a. Report recent Okta login history for the end user.<br>
  b. Updates the Slack thread with a URL for an okta log search by eventType, actor.id, start and end time where the eventType is user.session.start. This can be used to look for suspect logins.<br>
6. Breached Password Okta Event [5]<br>
  a. Populate a table with the data from the user.session.start Okta log search.<br>
7. Breached Password Okta Event [6]<br>
  a. Export the table of session start events as a csv file and send it to the Slack thread. For folks who are not Okta admins.<br>
<br>
<img width="1000"  alt="Slack-Thread" src="https://github.com/user-attachments/files/17896887/breached.password.event.pdf"><br>
<img width="1000"  alt="Breached-Password_1.1" src="https://github.com/user-attachments/files/17896890/Breached-Password_1.1.pdf"><br>
<img width="1000"  alt="Breached-Password_1.2" src="https://github.com/user-attachments/files/17896891/Breached-Password_1.2.pdf"><br>
<img width="1000"  alt="Breached-Password_2.1" src="https://github.com/user-attachments/files/17896892/Breached-Password_2.1.pdf"><br>
<img width="1000"  alt="Breached-Password_2.2" src="https://github.com/user-attachments/files/17896893/Breached-Password_2.2.pdf"><br>
<img width="1000"  alt="Breached-Password_3.1" src="https://github.com/user-attachments/files/17896894/Breached-Password_3.1.pdf"><br>
<img width="1000"  alt="Breached-Password_3.2" src="https://github.com/user-attachments/files/17896895/Breached-Password_3.2.pdf"><br>
<img width="1000"  alt="Breached-Password_4.1" src="https://github.com/user-attachments/files/17896896/Breached-Password_4.1.pdf"><br>
<img width="1000"  alt="Breached-Password_4.2" src="https://github.com/user-attachments/files/17896897/Breached-Password_4.2.pdf"><br>
<img width="1000"  alt="Breached-Password_5.0" src="https://github.com/user-attachments/files/17896898/Breached-Password_5.0.pdf"><br>
<img width="1000"  alt="Breached-Password_6.1" src="https://github.com/user-attachments/files/17896899/Breached-Password_6.1.pdf"><br>
<img width="1000"  alt="Breached-Password_6.2" src="https://github.com/user-attachments/files/17896900/Breached-Password_6.2.pdf"><br>












