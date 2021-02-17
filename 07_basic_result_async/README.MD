# Cloud DFM Asynchronous Basic Result Example
This is a very basic example that results in the CAM JSON file.  It will run asynchronously for jobs that take longer than 30 seconds.  You need to constantly check the job's status to see if it is "complete" then your results will be available to you.
Your `CLOUDDFM_TOKEN` should never be exposed to the public.  
This is only to show how our API can be used.  Please see "Cloud DFM Web Server Example"
for a better example of CloudDFM usage on your own web server.

## Installation
* Open `index.html` in an editor and replace CLOUDDFM_TOKEN with your own token.
* Open a browser and point to the `index.html` local file.
* Pick Gerber files and choose a layer type from the drop down.
* Press the submit button, wait for processing, and 2 links will display.
