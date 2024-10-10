# PCB Preflight API - Getting Started Example
Automates the extraction of basic PCB Design information such as: layers, nets, stackup, apertures, nctools, components, and board dimensions. Displays the resulting JSON file afterwards.  This simple example demonstrates how easily the PCB Preflight API can be utilized into a cost-effective manufacturing solution. 
* Note: Check out `API Example: 03_extract` to extract mission-critical data required by PCB Sales/Engineering teams for pricing RFQ's.


## Installation
* Open `index.html` in an editor to view and edit the code.
* Open a browser and point to the `index.html` local file.
* Enter your own API key in the form.
* Select PCB manufacturing files (i.e Gerber, NC Drill/Rout, ODB++, IPC-2581) to upload, you can use our included samples for testing.
* Press the submit button, wait for processing, and a job_id_hash will be returned.
* With job_id_hash it will keep checking if the job is complete
* Once complete, JSON will be returned with the result.
