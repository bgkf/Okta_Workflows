### Okta Workflows Best Practices ###

OVERVIEW<br>
Some ideas to promote best practices for low/no code automation with Okta workflows.<br>
<br>
KEEP IT SIMPLE<br>
• Low/no code tools are intended to simplify task automation. Don't make it complex.<br>
• In general these tools are designed work linearly, one step at a time.<br>
• It's easier to figure out what happened.<br>
<br>
NAMING<br>
• Stick to a convention that indicates where the workflow is in the process.<br>
• Keep it simple. You are not writing a detailed description of what the workflow does.<br>
<br>
DOCUMENTATION<br>
• Add notes to the workflow for an audience that has never seen the workflow.<br>
• A description, at the beginning of the workflow, of what the workflow does and how it is triggered is really useful.<br>
• The documentation makes it easier  to figure out what happened or what is supposed to happen.<br>
• When creating a new workflow, I like to add the notes first and then add the action.<br>
• More is always better.<br>
<br>
PROCESS DIAGRAMS<br>
• Visualizing the process can help to keep it simple. The two screen shots below are for the same process.<br>

<img width="800"  alt="process_diagram_complex" src="https://github.com/user-attachments/assets/3ecea764-1c29-452a-91fd-dccb42dfbff7"/>
<img width="800"  alt="process_diagram_simplified" src="https://github.com/user-attachments/assets/a6f1caf8-d66a-4bfd-b465-48ada98dae46"/>

<br>
<br>
NESTING<br>
• Avoid nesting if/else, if/elseif/else or try/error cards.<br>
• If you must nest cards Okta recommends no more than 3 layers deep.<br>
• Use the outputs from these cards or check for multiple conditions at the same time instead.<br>
• Example of nested cards followed by using outputs and then checking for multiple conditions.<br>
<br>
Example of nesting.
<img width="1000" alt="nested_example" src="https://github.com/user-attachments/assets/216411a6-c58d-4dff-97c4-9aac366771b7"/>
Example using outputs.
<img width="2385" height="416" alt="Results-01" src="https://github.com/user-attachments/assets/10704f0b-23b2-4083-a7ab-cfbf0bf3005f"/>
Example checking multiple conditions with "in".
<img width="1594" height="596" alt="IN_Example" src="https://github.com/user-attachments/assets/a550c51b-df48-47f4-bf70-5768a813d0e6"/>

<br>
DEDICATED WORKFLOWS<br>
• If the process does the same thing multiple times create a dedicated workflow and send the data to it each time it is needed.<br>
• For example, each stage of process needs to send a Slack message to the same channel. If you need to make a change to the Slack card, and you have a dedicated workflow, then you only need to make that change once.<br>
<br>
SERIALIZED DATA<br>
• Serialized data is a structured format that can be shared, stored, transmitted and reconstructed later.<br>
• Use serialized data like JSON, to check multiple possibilities, pass a collection of items between workflows and avoid loops.<br>
<br>
<img width="2408" height="415" alt="SD-01" src="https://github.com/user-attachments/assets/10e73b84-a04f-4b69-ac0a-6f47de0893fd"/>
<img width="2420" height="449" alt="SD-02" src="https://github.com/user-attachments/assets/47c2bc6f-f987-4e0a-8fab-4fa11c28996c"/>
<img width="2411" height="656" alt="SD-03" src="https://github.com/user-attachments/assets/a03139ce-8b4b-4a4a-9f9e-55889ef967f9"/>
<img width="1953" height="663" alt="SD-04" src="https://github.com/user-attachments/assets/aec92abc-7695-462c-a41a-9da6d74f33b4"/>
<img width="2484" height="595" alt="SD-05" src="https://github.com/user-attachments/assets/ad8689c1-656d-4323-805c-eaa6164f5767"/>
<img width="2397" height="716" alt="SD-06" src="https://github.com/user-attachments/assets/fbbbe4a3-b90e-44c5-af2e-0ad7a11eb95a"/>
<img width="2033" height="719" alt="SD-07" src="https://github.com/user-attachments/assets/a5c5cc21-0dcf-42ae-ad55-47f969b862bf"/>
<br>
<br>
FURTHER READING<br>
• Okta's [best practices for building flows](https://help.okta.com/wf/en-us/content/topics/workflows/architecture-best-practices.htm) recommendations.<br>
• Okta's [building flows](https://help.okta.com/wf/en-us/content/topics/workflows/build/build-flows.htm) documentaion.<br>

