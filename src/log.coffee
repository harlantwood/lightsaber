{ type } = require './type'
{ stringify } = require 'circular-json'

log = (args...) ->
  for arg in args
    console.log arg

err = (args...) ->
  for arg in args
    console.error arg

p = d = plog = (args...) ->
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
    stringify data, stringify_args...
  catch
    data

module.exports = { d, err, log, plog, p, pretty, json, pjson }
