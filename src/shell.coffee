{echo, exec, exit} = require 'shelljs'


run = (cmd, options = {}) ->
  relaxed = options.relaxed ? false
  echo "==> #{cmd}"
  {code, output} = exec cmd
  if code isnt 0
    echo 'COMMAND FAILED'
    exit(code) unless relaxed
  output

module.exports = {
  run
}
