//on hover turn the image a transparent shade of color
//corresponding to plate section color

$('.red span > img').hover(function() {
    $(this).fadeTo('fast', 0.6);
  }, function (){
    $(this).fadeTo('fast', 1.0);
});

$('.orange span > img').hover(function() {
    $(this).fadeTo('fast', 0.6);
  }, function (){
    $(this).fadeTo('fast', 1.0);
});

$('.purple span > img').hover(function() {
    $(this).fadeTo('fast', 0.6);
  }, function (){
    $(this).fadeTo('fast', 1.0);
});

$('.green span > img').hover(function() {
    $(this).fadeTo('fast', 0.6);
  }, function (){
    $(this).fadeTo('fast', 1.0);
});


//select and make draggable any image to put on the plate
//clone is part of draggable function
$(document).ready(function() {
  $('#food_choices img').each(function() {
    $(this).draggable({
      helper: 'clone',
      revert: 'invalid',
      containment: '#plate_surface',
      start: function(event, ui) {
      jQuery(this).fadeTo('fast', 0.5);
      },
      stop: function(event, ui) {
      jQuery(this).fadeTo(0, 1);
      }
    });
  });

//drop the dragged image on the plate
  $('#plate_surface').droppable({
    accept: '#food_choices img',
    drop: function(event, ui) {
      var $clone = ui.helper.clone();
      if (!$clone.is('.inside-plate_surface')) {
        $(this).append($clone.addClass('inside-plate_surface').draggable({
          containment: '#plate_surface'
        }));
        $clone.resizable({
        helper: 'ui-resizable-helper'
        });
      }
    //individualized alerts depending on which food was drag-and-dropped
    //Future, advanced iteration can play with jquery dialog
    alert($(ui.draggable).attr('alt'));
    }
  });
});

//undo individual image placement; double click to delete
$('#plate_surface').on('dblclick', '.inside-plate_surface', function() {
  $(this).remove();
});

//clear whole plate to start over
$('#refresh-btn').click(function() {
  $('.inside-plate_surface').remove();
});


//Future, advanced iteration: success message for user to know they have completed the task
  //-need to detect one item from each of the four categories inside the plate for four total
  //-create a success message alert or dialog
  //hide it initially and then create a trigger when there are the four items inside the plate to get the success message to show up
