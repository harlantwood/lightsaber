require('coffee-script/register');

var _ = require('lodash-node');

module.exports = _.merge(
  require('./lib/collection.coffee'),
  require('./lib/jquery.coffee'),
  require('./lib/log.coffee'),
  require('./lib/object.coffee'),
  require('./lib/polyfill.coffee'),
  require('./lib/space.coffee'),
  require('./lib/type.coffee')
);
