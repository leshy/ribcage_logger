backbone = require 'backbone4000'
Logger = require 'logger2'

exports.plugin = backbone.Model.extend4000 
    init: (callback) ->
        logger = new Logger.Logger()
        logger.outputs.push new Logger.Console()
        @env.log = logger.log.bind(logger)
    
        callback()




