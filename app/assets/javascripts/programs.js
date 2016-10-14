function bind_program_thumbs(){
  $('.program_thumb').hover(function(){
    var image_url = this.src;
    var index = $(this).data('index');
    $('#view_' + index).children()[0].src = image_url = image_url;});
}

function hover_header(){
  $('.fixer').hover(function(){
    $('.program_wrapper_blocker').stop(true, true).fadeTo(400, 0);
    $('#program_navbar').attr("id","navbar");
    switchClass();
  });
    // }, function(){
    // $('.program_wrapper_blocker').stop(true, true).fadeTo(300, 1);
    // $('#navbar').attr("id","program_navbar");
    // });
}

function switchClass(){
  $('.program_wrapper_blocker').addClass('wrapper_blocker');
  $('.wrapper_blocker').removeClass('program_wrapper_blocker');
  $('.wrapper_blocker').fadeTo(0, 1);
}