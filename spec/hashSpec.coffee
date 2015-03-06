chai = require 'chai'
chai.should()
{
  hash
  sha1
  sha224
  sha256
  sha384
  sha512
} = require '../src/hash'

describe 'sha1', ->
  it 'should hash strings as expected', ->
    sha1('').should.equal 'da39a3ee5e6b4b0d3255bfef95601890afd80709'
    sha1('a').should.equal '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8'

describe 'sha224', ->
  it 'should hash strings as expected', ->
    sha224('').should.equal 'd14a028c2a3a2bc9476102bb288234c415a2b01f828ea62ac5b3e42f'
    sha224('a').should.equal 'abd37534c7d9a2efb9465de931cd7055ffdb8879563ae98078d6d6d5'

describe 'sha256', ->
  it 'should hash strings as expected', ->
    sha256('').should.equal 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
    sha256('a').should.equal 'ca978112ca1bbdcafac231b39a23dc4da786eff8147c4e72b9807785afee48bb'

describe 'sha384', ->
  it 'should hash strings as expected', ->
    sha384('').should.equal '38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b'
    sha384('a').should.equal '54a59b9f22b0b80880d8427e548b7c23abd873486e1f035dce9cd697e85175033caa88e6d57bc35efae0b5afd3145f31'

describe 'sha512', ->
  it 'should hash strings as expected', ->
    sha512('').should.equal 'cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e'
    sha512('a').should.equal '1f40fc92da241694750979ee6cf582f2d5d7d28e18335de05abc54d0560e0f5302860c652bf08d560252aa5e74210546f369fbbbce8c12cfc7957b2652fe9a75'

describe 'hash', ->
  for name_style in ['sha384', 'SHA384', 'sha-384', 'SHA-384']
    it "should respond to the algorithm name style '#{name_style}'", ->
      hash('', name_style).should.equal '38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b'