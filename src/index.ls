fs = require 'fs'
request = require 'request'

module.exports.run = (languages) !->
  request('https://www.gitignore.io/api/' ++ languages ++ '/').pipe(fs.createWriteStream('.gitignore'))

module.exports.list = ->
  new Promise (res, rej) ->
    request 'https://www.gitignore.io/api/list', (error, response) ->
      res response.body
