backbone = require 'backbone4000'
Logger = require 'nodejs-logger2'
_ = require 'underscore'

exports.lego = backbone.Model.extend4000 
    init: (callback) ->
        console.log 'initializing logger...'
        _.map @settings.outputs, (value,name) -> console.log name,'output',value
        logger = @logger = new Logger.Logger @settings
        @env.log = logger.log.bind(logger)
        callback()





