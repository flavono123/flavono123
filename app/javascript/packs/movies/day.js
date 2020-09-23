$(document).ready(() => {
  $('#day-modal').on('show.bs.modal', function(event) {
    var button = $(event.relatedTarget);
    var modal = $(this);

    modal.find('.modal-body').load(button.data('url'));
  });
});
