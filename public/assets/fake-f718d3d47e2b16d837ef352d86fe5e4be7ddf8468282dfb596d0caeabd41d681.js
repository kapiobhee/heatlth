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

  $(document).on('ready', function() {
    return $('.select-dropdown').dropdown({
      inDuration: 300,
      outDuration: 225,
      constrain_width: false,
      hover: true,
      gutter: 0,
      belowOrigin: false
    });
  });

  return;

}).call(this);
