require('coffee-script/register');  //# TODO only if in nodejs, not webpack

var _ = require('lodash-node');

module.exports = _.merge(
  require('./lib/hash.coffee'),
  require('./lib/log.coffee'),
  require('./lib/object.coffee'),
  require('./lib/space.coffee'),
  require('./lib/string.coffee'),
  require('./lib/type.coffee'),
  require('./lib/verbiage.coffee')
);
