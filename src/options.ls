require! optionator

module.exports = optionator do
    prepend: 'Usage: ignore [options]... [languages]'
    options:
      * option: 'help'
        alias: 'h'
        type: 'Boolean'
        description: 'displays help'
      * option: 'run'
        alias: 'r'
        type: 'String'
        description: 'Run the program'
      * option: 'list'
        alias: 'l'
        type:'Boolean'
        description: 'List all available languages'
