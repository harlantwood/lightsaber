`if (typeof define !== 'function') { var define = require('amdefine')(module) }`

define (require, exports, module) ->

  jquery = -> 
    if jQuery?
      jQuery
    else
      require "jquery"
  
  module.exports = { jquery }
