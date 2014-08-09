# String#startsWith has been added to the ECMAScript 6 specification 
# and may not be available in all JavaScript implementations yet. 
if !String.prototype.startsWith
  Object.defineProperty String.prototype, 'startsWith',
    enumerable: false
    configurable: false
    writable: false
    value: (searchString, position) ->
      position ||= 0
      @indexOf(searchString, position) == position
