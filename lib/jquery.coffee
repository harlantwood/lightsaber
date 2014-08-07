define (require, exports, module) ->
  throw 'jQuery is required but could not be found' unless jQuery?
  module.exports = jQuery
