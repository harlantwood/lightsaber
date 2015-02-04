_ = require "lodash"

# return a new object with "snake case" versions of all keys.
# For example:
#   { fooBarBaz: 22 }
# becomes:
#   { foo_bar_baz: 22 }
#
snake_case_keys = (object) ->
  snake_object = {}
  for own key, value of object
    snake_object[_.snakeCase key] = value
  snake_object

module.exports = { snake_case_keys }
