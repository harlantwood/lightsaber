{ type }          = require './type'

log = (args...) ->
  for arg in args
    console.log arg

err = (args...) ->
  for arg in args
    console.error arg

p = plog = (args...) ->
  for arg in args
    log pretty arg

pretty = (arg) ->
  if type(arg) in [ 'array', 'object' ]
    arg = pjson arg
  else
    arg

pjson = (data) ->
  json data, null, 4

json = (data, stringify_args...) ->
  try
    JSON.stringify data, stringify_args...
  catch
    data

module.exports = { err, log, plog, p, pretty, json, pjson }
