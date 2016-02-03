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
    if process.argv[3]
      create.list!then (res) ->
        array-of-languages = _.split ',' res
        languages = _.split ',' process.argv[3]
        if _.empty(_.difference languages, array-of-languages)
          console.log "Yes, those are all valid languages"
        else
          console.log "One or more of those languages are invalid"
    else
      create.list!then (res) ->
        console.log res

module.exports.execute = execute
