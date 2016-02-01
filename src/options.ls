require! optionator

module.exports = optionator do
    prepend: 'Usage: gitignore [options]... [languages]'
    options:
      * option: 'help'
        alias: 'h'
        type: 'Boolean'
        description: 'displays help'
      * option: 'run'
        alias: 'r'
        type: 'String'
        description: 'Run the program'
