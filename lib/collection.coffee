define (require, exports, module) ->

  { copy }          = require 'light/object'

  add = (array, elements...) ->
    result = copy array
    result.push elements...
    result

  module.exports = { add }
