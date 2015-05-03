window.Scratch =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    alert('Hello from backbone!');

window.App = window.Scratch

$(document).ready ->
  Scratch.initialize()
