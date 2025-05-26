# PCB Preflight API - Generate intelligent ODB++ from Gerber Files

### This demo will automate the following features: 
* Uploads any Gerber/CAM files and NC Drill/Rout
* Detects All Layer types and stackup order
* Detects a Border/Profile layer.
* Extract and Generate a Netlist (i.e electrical connectivity)
* Extract and Generate Components (when possible)  
* Output directly to an ODB++ file, that may be used anywhere ODB++ is needed.

Need IPC-2581/IPC-DPMX format instead of ODB++? Check out the next tutorial.


## Installation
* Open a browser and point to this local file: `index.html`
* Enter your own API key in the form.
* Pick Gerber/CAM files to upload, you can use our included sandbox files for testing.
* Press the submit button, wait for processing, and a job_id_hash will be returned.
* With job_id it will keep checking if the job is complete
* Once complete, you will have access to the new ODB++ file.


## Need more API examples? Contact us!
Contact <a href="https://support.numericalinnovations.com/support/tickets/new">Numerical Innovations Support</a> and describe the PCB Preflight API example you would like us to create.