{run} = require './shell'

# npm link faaaails with webpack dev server, so we do it manually
link = (from, to = from) ->
  run "rsync
    --delete
    --delete-excluded
    --recursive
    --human-readable
    --exclude=.git/
    --exclude=.idea/
    --exclude=node_modules/
    --exclude=tmp/
    ../#{from}/ ./node_modules/#{to}",
    relaxed: true

module.exports = {
  link
}
