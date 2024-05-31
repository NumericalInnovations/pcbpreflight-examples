# PCB Preflight Basic Example
This is a very basic example.  Your PCB Preflight API Key should never be exposed to the public.  
This is only to show how our API can be used.  Please see "Cloud DFM Web Server Example"
for a better example of PCB Preflight usage on your own web server.

## Installation
* Open `index.html` in an editor to view and edit the code.
* Open a browser and point to the `index.html` local file.
* Pick Gerber files and make sure there is an FM6 file included also.
* Press the submit button, wait for processing, and a job_id_hash will be returned.
* With job_id_hash it will keep checking if the job is complete
* Once complete, JSON will be returned with the result.
