//require('coffee-script/register');  # TODO only if in nodejs, not webpack

var _ = require('lodash-node');

module.exports = _.merge(
  require('./collection.coffee'),
  require('./hash.coffee'),
  require('./jquery.coffee'),
  require('./json.coffee'),
  require('./log.coffee'),
  require('./object.coffee'),
  require('./polyfill.coffee'),
  require('./space.coffee'),
  require('./type.coffee'),
  require('./verbiage.coffee')
);
