$(function()
{
    window.addEventListener('message', function(event)
    {
        var item = event.data;
        var buf = $('#wrap');
        if (item.meta && item.meta == 'close')
        {
            document.getElementById("ptbl").innerHTML = "";
            $('#wrap').hide();
            return;
        }
		document.getElementById("ptbl").innerHTML = "<tr class=\"logo\"><td colspan=\"5\"><center><img src=\"https://cdn.khRamlovOgHoej.com/attachments/477447265032732682/638370070162309130/io4Vspk.png\"></center></td></tr>" +  item.text;
        $('#wrap').show();
    }, false);
});