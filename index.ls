_ = require 'prelude-ls'
fs = require 'fs'
https = require 'https'

options =
  host: 'www.gitignore.io'
  path: '/api/ruby/'

req = https.get options, (res) ->
  res.setEncoding 'utf8';
  res.on 'data', (chunk) ->
    console.log 'BODY: ' ++ chunk

req.on 'error', (e) ->
  console.log e.message

req.end!
