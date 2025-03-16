### Jamf Protect Compliance Report ###

BACKGROUND<br>
Generate a monthly report that computes the compliance baseline score and tracks the trend over time.<br>
The compliance baseline score is the average of the individual computer compliance baseline scores.<br>
Spreadsheet examples are below the workflows.<br>

WORKFLOW PROCESS
1. Delete the spreadsheets created in the previous month.
2. Collect the data from each computer and add the formulas to compute each compliance baseline score.
3. Create the spreadsheet with the data for the fleet.
4. Use json to create the spreadsheet with the graphs.<br>
   a. [header.json](https://github.com/bgkf/Okta_Workflows/blob/c0e703ef03aed1f93452e7bc79cec63974f77a63/Jamf_Protect_Compliance_Report/header.json)<br>
   b. [header_merge_cells.json](https://github.com/bgkf/Okta_Workflows/blob/c0e703ef03aed1f93452e7bc79cec63974f77a63/Jamf_Protect_Compliance_Report/header_merge_cells.json)<br>
   c. [historical_trend.json](https://github.com/bgkf/Okta_Workflows/blob/c0e703ef03aed1f93452e7bc79cec63974f77a63/Jamf_Protect_Compliance_Report/historical_trend.json)<br>
   d. [pie_chart.json](https://github.com/bgkf/Okta_Workflows/blob/c0e703ef03aed1f93452e7bc79cec63974f77a63/Jamf_Protect_Compliance_Report/pie_chart.json)<br>
<br>
OKTA WORKFLOWS<br>
<img width="1000"  alt="compliance report 1.1" src="https://github.com/user-attachments/files/19268266/compliance.report.1.1.pdf"><br>
<img width="1000"  alt="compliance report 1.2" src="https://github.com/user-attachments/files/19268267/compliance.report.1.2.pdf"><br>
<img width="1000"  alt="compliance report 1.3" src="https://github.com/user-attachments/files/19268268/compliance.report.1.3.pdf"><br>
<img width="1000"  alt="compliance report 1.4" src="https://github.com/user-attachments/files/19268269/compliance.report.1.4.pdf"><br>
<img width="1000"  alt="compliance report 2.1" src="https://github.com/user-attachments/files/19268270/compliance.report.2.1.pdf"><br>
<img width="1000"  alt="compliance report 2.2" src="https://github.com/user-attachments/files/19268271/compliance.report.2.2.pdf"><br>
<img width="1000"  alt="compliance report 2.3" src="https://github.com/user-attachments/files/19268272/compliance.report.2.3.pdf"><br>
<img width="1000"  alt="compliance report 2.4" src="https://github.com/user-attachments/files/19268273/compliance.report.2.4.pdf"><br>
<img width="1000"  alt="compliance report 2.5" src="https://github.com/user-attachments/files/19268274/compliance.report.2.5.pdf"><br>
<img width="1000"  alt="compliance report 2.6" src="https://github.com/user-attachments/files/19268275/compliance.report.2.6.pdf"><br>
<br>
SPREADSHEETS<br>
Template<br>
<img width="500"  alt="sheet_template.pdf" src="https://github.com/user-attachments/files/19268291/sheet_template.pdf"><br>

Data for each computer<br>
<img width="500"  alt="sheet_data.pdf" src="https://github.com/user-attachments/files/19268293/sheet_data.pdf"><br>

Fleet data<br>
<img width="500"  alt="sheet_stats.pdf" src="https://github.com/user-attachments/files/19268305/sheet_stats.pdf"><br>

Previous months fleet data<br>
<img width="500"  alt="sheet_historicalStats.pdf" src="https://github.com/user-attachments/files/19268319/sheet_historicalStats.pdf"><br>

Charts<br>
<img width="500"  alt="sheet_report.pdf" src="https://github.com/user-attachments/files/19268321/sheet_report.pdf"><br>


