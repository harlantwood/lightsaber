var _ = require('lodash');

module.exports = _.merge(
  require('./lib/hash'),
  require('./lib/lodash'),
  require('./lib/log'),
  require('./lib/object'),
  require('./lib/space'),
  require('./lib/string'),
  require('./lib/type'),
  require('./lib/verbiage')
);
