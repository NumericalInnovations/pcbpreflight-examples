# PCB Preflight API - SMT Stencil Editing: Perform Homebase Pad Conversion

### This demo will automate the following features: 
* Upload any Gerber/CAM files 
* Detects All Layer types and stackup order
* Select appropriate Pads on Paste Layer
* Perform Homebase conversion
* Output a workspace file (wrk).  The workspace file (wrk) may be freely viewed on PCB Prefligt's website or desktop software, plus supported by <a href="https://www.numericalinnovations.com/collections/fab-3000-gerber-cam" target="_blank">FAB3000 (Gerber/CAM software)</a> and <a href="https://www.numericalinnovations.com/collections/ace-translator-3000" target="_blank">ACE 2D/3D (Translator)</a>



## Installation
* Open a browser and point to this local file: `index.html`
* Enter your own API key in the form.
* Pick Gerber/CAM files to upload, you can use our included sandbox files for testing.
* Review the available options.
* Press the submit button, wait for processing, and a job_id_hash will be returned.
* With job_id it will keep checking if the job is complete
* Once complete, you will have access to the new workspace file (wrk) with homebase edits.  Don't need a workspace file?  You may just as easily output to Gerber, ODB++ or any other format supported by PCB Preflight.


## Need more API examples? Contact us!
Contact <a href="https://support.numericalinnovations.com/support/tickets/new">Numerical Innovations Support</a> and describe the PCB Preflight API example you would like us to create.