//Numerical Innovations

const CLOUDDFM_TOKEN = 'YOUR-CLOUDDFM-TOKEN'; //This should be stored as an ENV variable

const multer = require('multer')
const FormData = require('form-data')
const fs = require('fs');
const express = require('express')
const https = require('https')
const app = express()
const port = 3000
const upload = multer({dest:'uploads/'})

//Make folder public, to access the HTML example
app.use(express.static('public'))

//Start listening
app.listen(port, () => {
  console.log(`Cloud DFM Server listening at http://localhost:${port}`)
})

//Pass data to CloudDFM and return result directly
app.post('/process', upload.array('files'), (req,res,next) => {

  //Create form data with multiple files
  let form = new FormData()
  form.append('async','false') //Set to false to wait for results, true to return immediately
  form.append('output','files')  //Either multiple "files" or one "zip"
  form.append('fm6',req.body.fm6) //Client generated this file, you can generate this server-side also
  req.files.forEach(n=>{form.append('files',fs.createReadStream(n.path),n.originalname)})

  //Make a request to CloudDFM
  let request = https.request({
    method: 'post',
    host: 'www.clouddfm.com',
    path: '/api/v1/job',
    headers: Object.assign({'Authorization':CLOUDDFM_TOKEN},form.getHeaders())
  }, function(response) {
    let body = ''
    response.on('data',function(chunk) {body+=chunk})
    response.on('end',function() {res.json(JSON.parse(body))})
  }).on('error',function(err) {
    res.status(400).end();
  })

  form.pipe(request);
})
