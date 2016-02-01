fs = require 'fs'
request = require 'request'

module.exports.run = (languages) ->
  request('https://www.gitignore.io/api/' ++ languages ++ '/').pipe(fs.createWriteStream('.gitignore'))
