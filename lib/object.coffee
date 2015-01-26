{ type }          = require './type'
{ jquery }        = require './jquery'

keys = (object) ->
  if object? then Object.keys(object)

first_key = (object) ->
  keys(object)?[0]

# returns copy of object
# properties are deep copied
# depends on jQuery
copy = (object) ->
  if type(object) == 'array'
    object[...]
  else if type(object) == 'object'
    jquery.extend true, {}, object
  else
    throw "copy expected either array or object, got '#{type(object)}'"


# # merges objects into target object
# # properties are deep copied
# merge = (target, objects...) ->
#   if type(target) isnt 'object'
#     throw "merge(target, objects...) expected target to be an object, got '#{type(target)}'"
#   $.extend true, target, objects...
#   target

module.exports = { keys, first_key, copy }
