`if (typeof define !== 'function') { var define = require('amdefine')(module) }`

define (require, exports, module) ->

  { log }           = require './log'

  indent =  (text, line_prefix='    ') ->
    lines = for line in text.split("\n")
      "#{line_prefix}#{line}"
    lines.join "\n"

  # replace SHA-384 hex hashes with the first n characters of the hash only
  sane = (text, size=8) ->
    text.replace /// \b([0-9a-f]{#{size}})[0-9a-f]{#{384/4-size}}\b ///g, "$1"

  say = (text) ->
    for line in text.split("\n")
      log line.trim()

  quote  = (text) ->
    "'#{text}'"

  module.exports = {
    indent
    quote
    sane
    say
  }
