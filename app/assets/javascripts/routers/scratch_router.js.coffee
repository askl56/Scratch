class App.Routers.ScratchRouter extends Backbone.Router
  routes:
    '': -> 'index'
    '/notes/:id': 'showNote'

  index: ->
    view = new App.Views.Notes(collection: App.AllNotes)
    $('#container').html(view.render().el)

  showNote: (id) ->
    model = App.AllNotes[id - 1]
    view = new App.Views.EditNote(model: model)
    alert("You requested the note with the id of #{id}")
    $('#container').html(view.reder().el)
