{exec} = require 'child_process'
task 'build', 'Build project from koans/*.coffee to lib/*.js', ->
  exec 'coffee --compile --output lib/koans/ koans/', (err, stdout, stderr) ->
    throw err if err
    console.log stdout + stderr
task 'test', 'Build project from completed-koans/*.coffee to lib/*.js', ->
  exec 'coffee --compile --output lib/koans/ completed-koans/', (err, stdout, stderr) ->
    throw err if err
    console.log stdout + stderr

