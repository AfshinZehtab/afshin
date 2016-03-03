// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .







function chosechanel() {
  document.getElementById("srt1").value = document.getElementById("Ultra1").value;
}

function runlink() {
  // document.getElementById("link").action = document.getElementById("Ultra3").value; 
   
    if (document.getElementById("link").action == "https://api.telegram.org/bot174942579:AAH0OWxgwz3TpEOrT-8TbGx3aUsekhq9qXI/sendmessage?&parse_mode=Markdown&") {
      document.getElementById("textarea").name = "text";

      $(document).ready(function() {
      var text_max = 4096;
      $('#textarea_feedback').html(text_max + ' Characters Remaining');

      $('#textbox').keyup(function() {
          var text_length = $('#textarea').val().length;
          var text_remaining = text_max - text_length;

          $('#textarea_feedback').html(text_remaining + ' characters remaining');
            });
        });

    }
    else {
    document.getElementById("textarea").name = "caption";
    document.getElementById("textarea_feedback").id = "textarea_feedback";

          $(document).ready(function() {
      var text_max = 200;
      $('#textarea_feedback').html(text_max + ' Characters Remaining');

      $('#textbox').keyup(function() {
          var text_length = $('#textarea').val().length;
          var text_remaining = text_max - text_length;

          $('#textarea_feedback').html(text_remaining + ' characters remaining');
            });
        });


    }

    if (document.getElementById("link").action == "https://api.telegram.org/bot174942579:AAH0OWxgwz3TpEOrT-8TbGx3aUsekhq9qXI/sendVideo?") {
      document.getElementById("upload-buttom").name = "video";
    }

    else if (document.getElementById("link").action == "https://api.telegram.org/bot174942579:AAH0OWxgwz3TpEOrT-8TbGx3aUsekhq9qXI/sendAudio?") {
      document.getElementById("upload-buttom").name = "audio";

    }

    else if (document.getElementById("link").action == "https://api.telegram.org/bot174942579:AAH0OWxgwz3TpEOrT-8TbGx3aUsekhq9qXI/sendDocument?") {
      document.getElementById("upload-buttom").name = "document";

    }
    
    else {
    document.getElementById("upload-buttom").name = "photo";

    }
}


function readURL1(input) {
  if (input.files && input.files[0]) {
      var reader = new FileReader();

      reader.onload = function (e) {
          $('#img')
              .attr('src', e.target.result);
              // .width(600)
              // .height(600);
      };

      reader.readAsDataURL(input.files[0]);
  }
}



