// Generated by CoffeeScript 1.7.1
(function() {
  var Logger, backbone, _;

  backbone = require('backbone4000');

  Logger = require('logger3/server');

  _ = require('underscore');

  exports.lego = backbone.Model.extend4000({
    init: function(callback) {
      var logger;
      logger = this.env.logger = this.logger = new Logger.Logger(this.settings);
      this.env.l = logger;
      this.env.log = logger.log.bind(logger);
      return callback();
    }
  });

}).call(this);
