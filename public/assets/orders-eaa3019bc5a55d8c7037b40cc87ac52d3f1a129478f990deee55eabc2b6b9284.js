(function() {
  $(document).ready(function() {
    return $('.modal-trigger').leanModal({
      dismissible: true
    }, $('.modaldiv').click(function() {
      var elem, tmp;
      tmp = $(this).attr('id');
      elem = document.getElementById('mealid');
      return elem.value = tmp;
    }));
  });

  return;

}).call(this);
