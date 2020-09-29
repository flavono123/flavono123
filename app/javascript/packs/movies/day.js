$(document).ready(() => {
  $('#day-modal').on('show.bs.modal', function(event) {
    var button = $(event.relatedTarget);
    var modal = $(this);

    modal.find('.modal-body').load(button.data('url'));
  });
  
  $('#day-modal').on('hidden.bs.modal', function(event) {
    window.location.reload();
  });

  $('[data-toggle="popover"]').on('shown.bs.popover', function() {
    $('.movie-form').find(".title-input").focus();
  });
});
