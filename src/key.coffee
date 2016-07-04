bs58 = require 'bs58'
secureRandom = require 'secure-random'

key = (bits=256) ->
  bytes = Math.ceil(bits/4)
  bs58.encode secureRandom.randomBuffer bytes

module.exports = {key}
