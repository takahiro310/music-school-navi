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

    // Bootstrapカスタム検証スタイルを適用してすべてのフォームを取得
    var forms = document.getElementsByClassName('needs-validation');

    // ループして帰順を防ぐ
    var validation = Array.prototype.filter.call(forms, function(form) {
    form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
        } else {
            // 検証結果がOKであれば任意入力フォームのsubmit可否を選定
            submitFormControl();
        }
        form.classList.add('was-validated');

    }, false);
    });

    function submitFormControl() {
        if ($("#school_school_movie_attributes_0_youtube_v").val() == '') {
            $("#school_school_movie_attributes_0_youtube_v").prop('disabled', true);
        }
        if ($("#school_school_photo_attributes_0_photo").val() == '') {
            $("#school_school_photo_attributes_0_photo").prop('disabled', true);
        }
        if ($("#school_school_photo_attributes_1_photo").val() == '') {
            $("#school_school_photo_attributes_1_photo").prop('disabled', true);
        }
        if ($("#school_school_photo_attributes_2_photo").val() == '') {
            $("#school_school_photo_attributes_2_photo").prop('disabled', true);
        }
    }

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
