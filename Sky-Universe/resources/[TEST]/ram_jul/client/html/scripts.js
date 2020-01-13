$(document).ready(function () {
  setTheme();
  window.addEventListener('message', function (event) {
    var item = event.data;
    if (item.open == true) {
      openMenu();
    }
    if (item.open == false) {
      closeMenu();
    }
    if (item.notification == true) {
      Swal.fire({
        text: item.notification_msg,
        type: 'success',
        showCancelButton: true,
        confirmButtonColor: configs.theme.primary_color,
        confirmButtonText: 'OK',
        showCancelButton: false
      });
    }
  });
  document.onkeyup = function (data) {
    if (data.which == 27) {
      $.post('http://ram_jul/close', JSON.stringify({}));
    }
  };
  $(".btnClose").click(function () {
    $.post('http://ram_jul/close', JSON.stringify({}));
  });
});

function openMenu() {
  $(".container").fadeIn();
  openHome();
}
function closeMenu() {
  $(".container").fadeOut();
  $("#home").css("display", "none");
}

function openHome() {
  $("#home").css("display", "block");
}

function setTheme() {
  if(configs.theme.primary_color && configs.theme.secondary_color) {
    let primary_color = `--primary-color: ${configs.theme.primary_color}; `;
    let secondary_color = `--secondary-color: ${configs.theme.secondary_color}; `;
    $(":root").attr("style", primary_color + secondary_color);
  }
}
