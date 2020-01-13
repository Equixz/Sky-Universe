

var locationID = null;

$(document).ready(function () {
  setTheme();
  window.addEventListener('message', function (event) {
    var item = event.data;
    if (item.show == true) {
      open();
      openHome();
    }
	if (item.keys == true) {
		openKeys();
	}
	if (item.pris == true) {
		openPris();
	}
	if (item.check == true) {
		openCheck();
	}
	if (item.buy == true) {
		openBuy();
	}
	if (item.tilbage == true) {
		openTilbage();
	}
	if (item.custom == true) {
		openCustom();
	}
    if (item.show == false) {
      close();
    }
    if (item.locationID) {
      locationID = item.locationID;
    }
    if (item.location) {
      $("#home").empty();
      item.location.Knap1.forEach(element => {
        $("#home").append(`
          <div>
            <p></p>
          </div>
        `);
      });
    }
  });
  document.onkeyup = function (data) {
    if (data.which == 27) {
      $.post('http://kaz_ejendom/close', JSON.stringify({}));
    }
  };
  $(".btnClose").click(function () {
    $.post('http://kaz_ejendom/close', JSON.stringify({}));
  });
   $(".KeysClose").click(function () {
    $.post('http://kaz_ejendom/close', JSON.stringify({}));
	 });
   $(".prisClose").click(function () {
    $.post('http://kaz_ejendom/close', JSON.stringify({}));
  });
  $(".knap1").click(function () {
    $.post('http://kaz_ejendom/knap1', JSON.stringify({}));
  });
  $(".knap2").click(function () {
    $.post('http://kaz_ejendom/knap2', JSON.stringify({}));
  });
  $(".knap3").click(function () {
    $.post('http://kaz_ejendom/knap3', JSON.stringify({}));
  });
  $(".knap4").click(function () {
    $.post('http://kaz_ejendom/knap4', JSON.stringify({}));
  });
  $(".knap5").click(function () {
    $.post('http://kaz_ejendom/knap5', JSON.stringify({}));
  });
   $(".knap6").click(function () {
    $.post('http://kaz_ejendom/knap6', JSON.stringify({}));
  });
  $("#cc").submit(function(e) {
    e.preventDefault(); // Prevent form from submitting
	$.post('http://kaz_ejendom/close', JSON.stringify({}));2
    $.post('http://kaz_ejendom/kobnogle', JSON.stringify({
        nogle: $("#nogle").val(),
    }));
	});
  $("#check1").submit(function(e) {
    e.preventDefault(); // Prevent form from submitting
	$.post('http://kaz_ejendom/close', JSON.stringify({}));2
    $.post('http://kaz_ejendom/check3', JSON.stringify({
        check2: $("#check2").val(),
    }));
	});
  $("#sellling").submit(function(e) {
    e.preventDefault(); // Prevent form from submitting
	$.post('http://kaz_ejendom/close', JSON.stringify({}));2
    $.post('http://kaz_ejendom/soldthis', JSON.stringify({
        sold1: $("#sold1").val(),
		sold2: $("#sold2").val(),
		sold3: $("#sold3").val(),
    }));
	});
  $("#tilbage").submit(function(e) {
    e.preventDefault(); // Prevent form from submitting
	$.post('http://kaz_ejendom/close', JSON.stringify({}));2
    $.post('http://kaz_ejendom/tilbagethis', JSON.stringify({
        tilbage1: $("#tilbage1").val(),
		tilbage2: $("#tilbage2").val(),
		tilbage3: $("#tilbage3").val(),
    }));
	});
	$("#custom").submit(function(e) {
    e.preventDefault(); // Prevent form from submitting
	$.post('http://kaz_ejendom/close', JSON.stringify({}));2
    $.post('http://kaz_ejendom/customthis', JSON.stringify({
        custom1: $("#custom1").val(),
		custom2: $("#custom2").val(),
		custom3: $("#custom3").val(),
    }));
	});
});

function open() {
  $(".container").fadeIn();
}

function openKeys() {
  $(".keys").fadeIn();
}

function openPris() {
  $(".pris").fadeIn();
}

function openCheck() {
  $(".check").fadeIn();
}

function openBuy() {
  $(".buy").fadeIn();
}

function openTilbage() {
  $(".tilbage").fadeIn();
}

function openCustom() {
  $(".custom").fadeIn();
}

function close() {
  $(".container").fadeOut();
  $("#home").css("display", "none");
  $(".pris").fadeOut();
  $(".keys").fadeOut();
  $(".check").fadeOut();
  $(".buy").fadeOut();
  $(".tilbage").fadeOut();
  $(".custom").fadeOut();
}



function openHome() {
  $("#home").css("display", "block");
}

function setTheme() {
  if (configs.theme.primary_color && configs.theme.secondary_color) {
    let primary_color = `--primary-color: ${configs.theme.primary_color}; `;
    let secondary_color = `--secondary-color: ${configs.theme.secondary_color}; `;
    $(":root").attr("style", primary_color + secondary_color);
  }
}