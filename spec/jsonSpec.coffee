{ canonical_json } = require '../index'

QUnit.module 'canonical_json'

test 'numbers', ->
  equal '0', canonical_json 0
  equal '1', canonical_json 1
  equal '-1', canonical_json -1
  equal '0.5', canonical_json 0.5
  equal '100.007', canonical_json 100.007
  equal '-100.007', canonical_json -100.007

test 'strings', ->
  equal '""', canonical_json ''
  equal '"foo"', canonical_json 'foo'
  equal '"foo \\"bar\\" foo"', canonical_json 'foo "bar" foo'

test 'objects', ->
  equal '{"1":2,"foo":"bar","long-key":"val"}', canonical_json {"long-key": "val", 1:2, foo: "bar"}

test 'complex object', ->
  data = 
    {
      h: "a"
      g: 7
      '': [ 3, 2, 1, {g:7, h:"a"} ]
    }
  equal '{"":[3,2,1,{"g":7,"h":"a"}],"g":7,"h":"a"}', canonical_json data

