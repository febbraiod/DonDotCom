function bind_program_thumbs(){
  $('.program_thumb').hover(function(){
    var image_url = this.src;
    var index = $(this).data('index');
    $('#view_' + index).children()[0].src = image_url = image_url;});
}

// $(window).scroll(function() {    
//     var scroll = $(window).scrollTop();

//     if (scroll > 1 && scroll < 10) {
//       $('.program_wrapper_blocker').stop(true, true).fadeTo(500, 0);
//       $('#program_navbar').attr("id","navbar");
//     }else if(scroll > 10){
//       switchClass();
//     }else if(scroll < 1){
//       $('#navbar').attr("id","program_navbar");
//     }
// });

// function hover_header(){
//   $('.fixer').hover(function(){
//     $('.program_wrapper_blocker').stop(true, true).fadeTo(600, 0);
//     setTimeout(switchClass, 500);
//   }, function(){
//     $('.wrapper_blocker').stop(true, true).fadeTo(0, 0);
//     otherswitchClass();
//     });
// }

function switchClass(){
  $('.program_wrapper_blocker').addClass('wrapper_blocker');
  $('.wrapper_blocker').removeClass('program_wrapper_blocker');
  $('.wrapper_blocker').fadeTo(0, 1);
}

function otherswitchClass(){
  $('.wrapper_blocker').addClass('program_wrapper_blocker');
  $('.program_wrapper_blocker').removeClass('wrapper_blocker');
  $('.program_wrapper_blocker').fadeTo(500, 1);
}