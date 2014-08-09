lightsaber = require '../index'
{ sha384 } = lightsaber

QUnit.module 'sha384'

test 'hashes strings as expected', ->
  equal '38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b', sha384('')
  equal '54a59b9f22b0b80880d8427e548b7c23abd873486e1f035dce9cd697e85175033caa88e6d57bc35efae0b5afd3145f31', sha384('a')

#   it { "".sha384(:base64url).should == 'OLBgp1GsljhM2TJ-sbHjaiH9txEUvgdDTAzHv2P24donTt6_529l-9Ua0vFImLlb' }



# We would like to be able to use BDD syntax, but below is not working yet...

# require 'qunit'
# qunit_bdd = require 'qunit-bdd'
# { describe, context, it, before, after, lazy, expect, fail, helper } = qunit_bdd

# describe 'sha384', ->
#   it 'hashes strings as expected', ->
#     expect(sha384 '').to.eql '38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b'

