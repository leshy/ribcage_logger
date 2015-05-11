backbone = require 'backbone4000'
Logger = require 'logger2'
_ = require 'underscore'

exports.lego = backbone.Model.extend4000
    init: (callback) ->
        _.map @settings.outputs, (value,name) -> console.log name,'output',value
        logger = @env.logger = @logger = new Logger.Logger @settings
        @env.log = logger.log.bind(logger)

        callback()
