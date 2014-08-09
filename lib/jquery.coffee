`if (typeof define !== 'function') { var define = require('amdefine')(module) }`

define (require, exports, module) ->

  jquery = -> 
    throw 'jQuery is required but could not be found' unless jQuery?
    jQuery
  
  module.exports = { jquery }
