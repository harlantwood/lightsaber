bs58 = require 'bs58'
secureRandom = require 'secure-random'
{defaults} = require 'lodash'

randomKey = (args = {}) ->
  defaults args,
    bits: 256

  bytes = Math.ceil(args.bits / 8)
  bs58.encode secureRandom.randomBuffer bytes

module.exports = {randomKey}
