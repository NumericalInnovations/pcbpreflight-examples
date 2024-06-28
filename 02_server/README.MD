# PCB Preflight NodeJS Example
This is a very basic example for processing a job on a NodeJS server.  
Your PCB Preflight API Key should never be exposed to the public.  
This is only to show how our API can be used, you can use your own preferred language.
for a better example of PCB Preflight usage on your own web server.

## Installation
* Make sure you have Node 16 or higher installed on your system `nvm use 16`.
* Within the `02_server` type `npm i` to install the dependencies.
* In `app.js` fill in your own API key to `PCBPREFLIGHT_API_KEY`
* Type `node app.js` to run a job based on `samples/sample1.zip`
* Once complete, JSON will be returned with the result.
