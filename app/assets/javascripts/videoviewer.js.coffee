# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
# $('#move_up').onload ->
$('#move_up').click ->
    console.log("boooooooooo")
    request = new XMLHttpRequest()
    request.open("post", "http://129.65.152.245:3000/pier/up")
    request.send()

$('#move_down').click ->
    $.ajax
      url: '/pier/down',
      type: 'POST',
      dataType: 'JSON',
      data: {"down"},
      async: true,
      success: (data) ->

        if data is true
          return true
        else
          return false
