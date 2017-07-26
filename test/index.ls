require! {
  assert
  leshdash: { each, last, head, rpad, lazy, union, assign, omit, map, curry, times, keys, first, wait, head, pwait, wait, mapValues, reverse, reduce, filter }
  bluebird: p
  ribcage: { init }
}

describe 'root', ->
  before ->
    @env = {}
    
  specify 'init', -> new p (resolve,reject) ~>
    @env.settings = do
#      verboseInit: true
      module:
        mongo:
          name: 'test'
          
        workman:
          bla: 2
          
    init @env, (err,env) ->
      console.log err, env
      resolve true

