# PCB Preflight - NodeJS Example
Demonstrates utilizing the PCB Preflight API within a NodeJS server.  
* This example is primarily intended for NodeJS users.

## Installation
* Make sure you have Node 16 or higher installed on your system `nvm use 16`.
* Within the `02_server` type `npm i` to install the dependencies.
* In `app.js` fill in your own API key to `PCBPREFLIGHT_API_KEY`
* Type `node app.js` to run a job based on `sandbox_samples/sample2-gerber-images-workspace.zip`
* Once complete, JSON will be returned with the result.
