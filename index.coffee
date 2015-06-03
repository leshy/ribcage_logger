backbone = require 'backbone4000'
Logger = require 'logger3/server'
_ = require 'underscore'

exports.lego = backbone.Model.extend4000
    init: (callback) ->
        logger = @env.logger = @logger = new Logger.Logger @settings
        @env.l = logger
        @env.log = logger.log.bind logger

        callback()
