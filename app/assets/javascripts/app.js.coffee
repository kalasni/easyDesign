$ = jQuery
$(document).on "ready page:load", ->
  ("#follow_btn").on "click", ->
    friend_id = $(this).data("friend")
    boton = $(this)
    $.ajax "/usuario/follow",
      type: "POST",
      dataType: "JSON"
      data: { usuario: { friend_id: friend}}
      success: (data)->
        console.log data
        boton.slideUp()
      error: (err)->
        console.log err
        alert "No se ha podido crear la amistad"

