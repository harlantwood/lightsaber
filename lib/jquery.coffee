jquery = ->
  if jQuery?
    jQuery
  else
    require "jquery"

module.exports =
  jquery: jquery
  $:      jquery
