{exec, exit} = require 'shelljs'
{clone, defaults, merge, isEmpty} = require 'lodash'
chalk = require 'chalk'
{type} = require './type'
{json} = require './log'

run = (command, options={}) ->
  originalOptions = clone options
  defaults options,
    color: true
    relaxed: false
    quiet: false
    quietCommand: options.quiet ? false
    quietResponse: options.quiet ? false

  unless options.quietCommand
    prettyCommand = "\n==> #{command}   #{if isEmpty(originalOptions) then '' else '# '+json(originalOptions)}"
    prettyCommand = chalk.green prettyCommand if options.color
    console.log prettyCommand

  result = exec command, merge(options, quiet: options.quietResponse)

  exitCode = result.code
  if type(exitCode) isnt 'undefined' and exitCode isnt 0
    console.error "COMMAND FAILED: #{ json {exitCode} }"
    exit(exitCode) unless options.relaxed
  result

module.exports = {
  run
}
