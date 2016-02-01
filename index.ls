_ = require 'prelude-ls'
fs = require 'fs'
https = require 'https'

options =
  host: 'www.gitignore.io'
  path: '/api/ruby/'

req = https.get options, (res) ->
  res.setEncoding 'utf8';
  res.on 'data', (chunk) ->
    if chunk
      fs.writeFile '.gitignore', chunk, (err) ->
        if err
          return console.error err
        console.log "gitignore saved!"

req.on 'error', (e) ->
  console.log e.message

req.end!
