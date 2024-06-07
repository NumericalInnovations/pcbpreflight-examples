# PCB Preflight Basic Example
This is a very basic example.  Your PCB Preflight API Key should never be exposed to the public.  
This is only to show how our API can be used, you can use your own preferred language.
for a better example of PCB Preflight usage on your own web server.

## Installation
* Open `index.html` in an editor to view and edit the code.
* Open a browser and point to the `index.html` local file.
* Enter your own API key in the form.
* Pick Gerber files to upload, you can use our included samples for testing.
* Press the submit button, wait for processing, and a job_id_hash will be returned.
* With job_id_hash it will keep checking if the job is complete
* Once complete, JSON will be returned with the result.
