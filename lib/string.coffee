`if (typeof define !== 'function') { var define = require('amdefine')(module) }`

define (require, exports, module) ->

  similar = (a, b) ->
    console.log typeof a
    console.log a
    _trim(a.toLowerCase()) is _trim(b.toLowerCase())

  # note: `_.trim` will be in a forthcoming version of lo-dash; switch to that when released
  _trim = (string) ->
    String(string).replace /^\s+|\s+$/g, ""

  module.exports = { similar }
