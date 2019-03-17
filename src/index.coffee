{merge} = require 'lodash'

module.exports = merge(
  require('./browser'),
  require('./shell')
)
