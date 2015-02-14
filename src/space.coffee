move = (radius, angle) ->
  x: Math.cos(angle) * radius
  y: Math.sin(angle) * radius

distance = (x1, x2, y1, y2) -> Math.sqrt(_square(x2-x1) + _square(y2-y1))

_square = (n) -> n * n

module.exports = { distance, move }
