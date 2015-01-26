{ copy }          = require './object'

add = (array, elements...) ->
  result = copy array
  result.push elements...
  result

module.exports = { add }
