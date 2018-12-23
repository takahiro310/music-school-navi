// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

//https://note.mu/hajime38/n/ne2650fdf4559
$(function() {
    function readURL(input, elem) {
        if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $('#' + elem).attr('src', e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
        }
    }
    $("#card_photo").change(function(){
        readURL(this, "card_photo_prev");
    });
    $("#cover_photo").change(function(){
        readURL(this, "cover_photo_prev");
    });
    $("#school_school_photo_attributes_0_photo").change(function(){
        readURL(this, "photo_0_prev");
    });
    $("#school_school_photo_attributes_1_photo").change(function(){
        readURL(this, "photo_1_prev");
    });
    $("#school_school_photo_attributes_2_photo").change(function(){
        readURL(this, "photo_2_prev");
    });

    $('.custom-file-input').on('change', handleFileSelect);
        function handleFileSelect(evt) {
        var files = evt.target.files;
 
        var output = [];
        for (var i = 0, f; f = files[i]; i++) {
            output.push(escape(f.name), ', ');
        }
        $(this).next('.custom-file-label').html(output.join(''));
    }
})
