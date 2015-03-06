jsSHA = require "jssha"

hash = (text, algorithm) ->
  throw "No algorithm specified" unless algorithm
  bits = algorithm.match(/^sha-?(\d+)$/i)?[1]  # matches sha384, SHA384, sha-384, SHA-384...
  throw "Unknown algorithm '#{algorithm}'" unless bits
  algorithm = "SHA-#{bits}"
  shaObj = new jsSHA text, "TEXT"
  shaObj.getHash algorithm, "HEX"

module.exports ?= {}

for sha_type in [1, 224, 256, 384, 512]
  do (sha_type) ->
    algorithm = "sha#{sha_type}"
    module.exports[algorithm] = (text) -> hash text, algorithm

module.exports.hash = hash