require! {
  path
  backbone4000: backbone
  workman: { WorkMan }
}
  
exports.lego = backbone.Model.extend4000 do
    requires: <[ logger mongo ]>
            
    init: (callback) ->
      @env.workman = workman = new WorkMan()

      defSettings = do
        dir: path.join @env.root, 'tasks'
        sync: @env.mongo.sync
        logger: @env.logger.child tags: { module: 'workman' }

      workman.init defSettings <<< @settings
      callback()
