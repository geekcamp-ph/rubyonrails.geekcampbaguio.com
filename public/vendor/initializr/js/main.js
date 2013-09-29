var pathname = window.location.pathname;

$("#select-nav option").each(function(){
  if ($(this).val() == pathname )  {
    $(this).prop("selected", true);
  }
})

$(document).on('change', '#select-nav', function() {
  var url = $(this).val();
  if (url.length) {
    window.location = url;
  }
  return false;
});

