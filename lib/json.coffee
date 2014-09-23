`if (typeof define !== 'function') { var define = require('amdefine')(module) }`

define (require, exports, module) ->

  { type }          = require './type'

  canonical_json = (data) -> 
    if type(data) is 'array'
      elements = for element in data
        canonical_json element
      '[' + elements.sort().join(',') + ']'
    else if type(data) is 'object' 
      key_val_pairs = for key in Object.keys(data).sort()
        val = data[key]
        "#{JSON.stringify key}:#{canonical_json val}"
      '{' + key_val_pairs.join(',') + '}'
    else
      JSON.stringify data

  module.exports = { 
    canonical_json 
  }
