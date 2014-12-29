`if (typeof define !== 'function') { var define = require('amdefine')(module) }`

define (require, exports, module) ->

  forge = require 'node-forge'

  hash = (text, algorithm='sha512') ->
    _digest text, { algorithm }

  sha384 = (text) ->
    _digest(text, algorithm: 'sha384').hex

  sha512 = (text) ->
    _digest(text, algorithm: 'sha512').hex

  _digest = (text, options) ->
    options.encoding ?= 'utf-8'
    message_digest = forge.md[options.algorithm].create()
    message_digest.update text, options.encoding
    {
      message_digest
      hex: message_digest.digest().toHex()    
    }

  module.exports = {
    hash
    sha384 
    sha512
  }
