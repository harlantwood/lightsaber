jsSHA = require "jssha"

hash = (text, algorithm='SHA-512') ->
  _digest text, { algorithm }

sha384 = (text) ->
  _digest text, algorithm: 'SHA-384'

sha512 = (text) ->
  _digest text, algorithm: 'SHA-512'

_digest = (text, options) ->
  shaObj = new jsSHA text, "TEXT"
  hash = shaObj.getHash options.algorithm, "HEX"

module.exports = {
  hash
  sha384
  sha512
}
