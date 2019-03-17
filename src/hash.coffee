jsSHA = require "jssha"
multihashing = require 'multihashing/dist'
Buffer = require('buffer/').Buffer
bs58 = require 'bs58'

module.exports = {}

hash = (text, algorithm) ->
  throw new Error("No algorithm specified") unless algorithm
  bits = algorithm.match(/^sha-?(\d+)$/i)?[1]  # matches sha384, SHA384, sha-384, SHA-384...
  throw new Error("Unknown algorithm '#{algorithm}'") unless bits
  algorithm = "SHA-#{bits}"
  shaObj = new jsSHA algorithm, "TEXT"
  shaObj.update text
  shaObj.getHash "HEX"

multihash = (data, algorithm = 'sha2-256') ->
  buffer = new Buffer data
  digest = multihashing buffer, algorithm
  bs58.encode digest

module.exports = {
  hash,
  multihash
}

for sha_type in [1, 224, 256, 384, 512]
  do (sha_type) ->
    algorithm = "sha#{sha_type}"
    module.exports[algorithm] = (text) -> hash text, algorithm
