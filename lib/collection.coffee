`if (typeof define !== 'function') { var define = require('amdefine')(module) }`

define (require, exports, module) ->

  { copy }          = require './object'

  add = (array, elements...) ->
    result = copy array
    result.push elements...
    result

  module.exports = { add }
