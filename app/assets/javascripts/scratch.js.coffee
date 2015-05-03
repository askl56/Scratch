window.Scratch =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new @Routers.ScratchRouter
    Backbone.history.start(pushState: true, hashChange: false)

window.App = window.Scratch

$(document).ready ->
  Scratch.initialize()
