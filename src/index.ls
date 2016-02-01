fs = require 'fs'
https = require 'https'

module.exports.run = (languages) ->
  options =
    host: 'www.gitignore.io'
    path: '/api/' ++ languages ++ '/'

  req = https.get options, (res) ->
    res.setEncoding 'utf8';
    console.log "Hello1"
    res.on 'data', (chunk) ->
      console.log "Hello2"
      if chunk
        fs.appendFileSync '.gitignore' chunk
        return console.log "gitignore saved!"
        fs.closeSync '.gitignore'

  req.on 'error', (e) ->
    console.log e.message

  req.end!
