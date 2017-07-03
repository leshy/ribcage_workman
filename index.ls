require! {
  backbone4000: Backbone
  workman: { WorkMan }
}
  
exports.lego = backbone.Model.extend4000 do
    requires: 'logger'
    init: (callback) ->
      @env.workman = WorkMan logger: env.logger.child module: "workman"
      callback()
