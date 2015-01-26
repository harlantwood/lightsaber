chai = require 'chai'
chai.should()
lightsaber = require '../index'
{ sha384 } = lightsaber

describe 'sha384', ->
  it 'should hash strings as expected', ->
    sha384('').should.equal '38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b'
    sha384('a').should.equal '54a59b9f22b0b80880d8427e548b7c23abd873486e1f035dce9cd697e85175033caa88e6d57bc35efae0b5afd3145f31'
