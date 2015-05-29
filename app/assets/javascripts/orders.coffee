$(document).ready ->
 $('.modal-trigger').leanModal
  dismissible: true

  $('.modaldiv').click ->
    tmp = $(this).attr('id')
    elem = document.getElementById('mealid')
    elem.value = tmp
return
