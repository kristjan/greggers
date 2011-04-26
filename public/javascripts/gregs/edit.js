$(document).ready(function() {
  var head = $('#greg_head');

  $('.draggable').draggable({
    stop: function(evt, ui) {
      $('#greg_x').val(ui.position.left);
      $('#greg_y').val(ui.position.top);
    }
  });

  var scale = $('#greg_scale');
  $('.slider').slider({
    min: 0.1, max: 2, step: 0.01,
    value: scale.val(),
    slide: function(evt, ui) {
      var val = ui.value;
      scale.val(val);
      head.css({
        'transform': 'scale(' + val + ')',
        '-moz-transform': 'scale(' + val + ')',
        '-webkit-transform': 'scale(' + val + ')'
      });
    }
  });
});
