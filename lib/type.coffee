if typeof define isnt 'function' then define = require('amdefine')(module) 

define (require, exports, module) ->

  # type(thing) -> type of 'thing' as string
  # Replaces (broken) JS built in "typeof"
  #
  type = (thing) ->
    FRIENDLY_NAMES =
      '[object Array]':     'array'
      '[object Boolean]':   'boolean'
      '[object Date]':      'date'
      '[object Function]':  'function'
      '[object Null]':      'null'    
      '[object Number]':    'number'
      '[object RegExp]':    'regexp'
      '[object String]':    'string'
      '[object Undefined]': 'undefined'
    FRIENDLY_NAMES[Object::toString.call thing] or 'object'

  module.exports = type
