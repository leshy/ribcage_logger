backbone = require 'backbone4000'
Logger = require 'logger2'
_ = require 'underscore'

exports.lego = backbone.Model.extend4000 
    init: (callback) ->
        console.log 'initializing logger...'
        logger = @logger = new Logger.Logger()
        
        if not @settings.outputs
            logger.outputs.push new Logger.Console()
        else
            _.map @settings.outputs, (value,name) ->
                logger.outputs.push new Logger[name](value)
                console.log name,'output',value

        @env.log = logger.log.bind(logger)
    
        callback()




