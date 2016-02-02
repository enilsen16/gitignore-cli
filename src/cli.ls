optionator = require('./options')
create = require('./index')
_ = require 'prelude-ls'

execute = (args) ->
  options = optionator.parseArgv process.argv
  if args == null
    error "you must specify arguments"
    exit 2
    return
  if options.help
    console.log optionator.generateHelp!
  else if options.run
    create.run _.last process.argv
  else if options.list
    create.list!then (res) ->
      console.log res

module.exports.execute = execute
