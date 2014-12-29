`if (typeof define !== 'function') { var define = require('amdefine')(module) }`

define (require, exports, module) ->

  module.exports = { 
    canonical_json: require 'json-stable-stringify' 
  }
