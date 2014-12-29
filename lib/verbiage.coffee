`if (typeof define !== 'function') { var define = require('amdefine')(module) }`

define (require, exports, module) ->

  { type }          = require './type'
  { log, p }        = require './log'

  code = (text, line_prefix='    ') ->
    log indent text, line_prefix

  indent = (text, line_prefix='    ') ->
    lines = for line in text.split("\n")
      "#{line_prefix}#{line}"
    lines.join "\n"

  # replace probable hex hashes with the first n characters of the hash only
  sane = (text, size=8) ->
    throw "expected string, got #{text}" unless type(text) is 'string'
    stays = "[0-9a-f]{#{size}}"
    goes = [128, 160, 256, 384, 512].map (bits) ->
      "[0-9a-f]{#{ bits/4 - size }}"
    .join '|'
    text.replace /// \b(#{stays})(#{goes})\b ///g, "$1"

  say = (text) ->
    for line in text.split("\n")
      log line.trim()

  quote  = (text) ->
    "'#{text}'"

  module.exports = {
    code
    indent
    quote
    sane
    say
  }
