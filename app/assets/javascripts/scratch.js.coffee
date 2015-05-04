window.Scratch =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    @AllNotes = new @Collections.Notes
    @AllNotes.fetch().done =>
      new @Routers.ScratchRouter
      Backbone.history.start(pushState: true)

window.App = window.Scratch

$(document).ready ->
  Scratch.initialize()
