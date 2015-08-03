$(document).ready ->
 $('.modal-trigger').leanModal
  dismissible: true

  $('.modaldiv').click ->
    tmp = $(this).attr('id')
    elem = document.getElementById('mealid')
    elem.value = tmp

$(document).on 'ready', ->
  $('.select-dropdown').dropdown
    inDuration: 300
    outDuration: 225
    constrain_width: false
    hover: true
    gutter: 0
    belowOrigin: false
return

