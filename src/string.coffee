_ = require "lodash"

similar = (a, b) ->
  _.trim(a.toLowerCase()) is _.trim(b.toLowerCase())

module.exports = { similar }
