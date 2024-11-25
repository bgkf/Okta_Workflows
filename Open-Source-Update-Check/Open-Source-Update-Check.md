### Check for updates to IT Tools when automatic updates are not possible. ###

1. The [script](https://github.com/bgkf/Okta_Workflows/blob/e4c04f3823e2a177b8891bec33a1d894805dced1/Open-Source-Update-Check/Open-Source-Update-Check.sh) executes on a schedule.<br>
   a. Curls the current version of the tools.<br>
   b. Composes the results into JSON data.<br>
   c. Sends the data to a workflow. <br>
3. The Workflow is triggered by the API endpoint.
4. The tool version in the data is checked against the tool version stored in a table.
5. If there is a change, create an Asana task and notify IT with a Slack message.

<img width="1000"  alt="IT-Tool_1" src="https://github.com/user-attachments/files/17897000/IT-Tool_1.pdf"><br>

<img width="1000"  alt="IT-Tool_2.1" src="https://github.com/user-attachments/files/17897001/IT-Tool_2.1.pdf"><br>

<img width="1000"  alt="IT-Tool_2.2" src="https://github.com/user-attachments/files/17897002/IT-Tool_2.2.pdf"><br>
