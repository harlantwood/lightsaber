`if (typeof define !== 'function') { var define = require('amdefine')(module) }`

define (require, exports, module) ->

  forge = require 'node-forge'

  sha = (text, options) ->
    options.algorithm ?= 'sha512'
    options.encoding ?= 'utf-8'
    message_digest = forge.md[options.algorithm].create()
    message_digest.update text, options.encoding
    {
      message_digest
      hex: message_digest.digest().toHex()    
    }

  sha384 = (text) ->
    sha(text, algorithm: 'sha384').hex


  module.exports = { sha384 }
