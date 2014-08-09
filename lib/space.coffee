`if (typeof define !== 'function') { var define = require('amdefine')(module) }`

define (require, exports, module) ->

  move = (radius, angle) ->
    x: Math.cos(angle) * radius
    y: Math.sin(angle) * radius

  distance = (x1, x2, y1, y2) -> Math.sqrt(square(x2-x1) + square(y2-y1))

  square = (n) -> n * n

  module.exports = { distance, move }
