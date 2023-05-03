jQuery(function ($) {

    $(".sidebar-dropdown > a").click(function() {
  $(".sidebar-submenu").slideUp(200);
  if (
    $(this)
      .parent()
      .hasClass("active")
  ) {
    $(".sidebar-dropdown").removeClass("active");
    $(this)
      .parent()
      .removeClass("active");
  } else {
    $(".sidebar-dropdown").removeClass("active");
    $(this)
      .next(".sidebar-submenu")
      .slideDown(200);
    $(this)
      .parent()
      .addClass("active");
  }
});

$("#close-sidebar").click(function() {
  $(".page-wrapper").removeClass("toggled");
});
$("#show-sidebar").click(function() {
  $(".page-wrapper").addClass("toggled");
});


   
   
});


$(document).ready(function() {
  $('.buy-btn').click(function() {
    var productId = $(this).data('id');
    $('#product-id').val(productId);
    $('#confirm-modal').modal('show');
  });
});

$(document).ready(function() {
  $('#confirm-btn').click(function() {
    var productId = $('#product-id').val();
    // Thực hiện các hành động mua hàng với productId ở đây
     window.location.href = "/user/cart/process/"+productId;
    // Sau khi mua hàng thành công, ẩn modal
    $('#confirm-modal').modal('hide');
  });
});

