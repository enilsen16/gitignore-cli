// Generated by LiveScript 1.4.0
(function(){
  var optionator;
  optionator = require('optionator');
  module.exports = optionator({
    prepend: 'Usage: ignore [options]... [languages]',
    options: [
      {
        option: 'help',
        alias: 'h',
        type: 'Boolean',
        description: 'displays help'
      }, {
        option: 'run',
        alias: 'r',
        type: 'String',
        description: 'Run the program'
      }, {
        option: 'list',
        alias: 'l',
        type: 'Boolean',
        description: 'List all available languages'
      }
    ]
  });
}).call(this);
