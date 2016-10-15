// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/



function bind_design_thumbs(){
  $('.thumb').hover(function(){
    var image_url = this.src;
    if($('.design_view_container').children()[0] === undefined){
        $('.design_view_container_2').children()[0].src = image_url;
      }else{
        $('.design_view_container').children()[0].src = image_url;
      }
  });
}

$(window).scroll(function() {    
    var scroll = $(window).scrollTop();

    if (scroll > 30) {
      makeOpaque();
    }
    else if(scroll < 30){
      makeTransparent();
    }
});

var makeOpaque = function(){
  if($('.wrapper_blocker').hasClass('transparent')){
      $('.wrapper_blocker').removeClass('transparent');
      $('#white_navbar').attr("id","navbar");
      $('.links').addClass('uplink');
      $('#donpic').css('top', 32);
    }
};

var makeTransparent = function(){
  if($('.wrapper_blocker').hasClass('transparent') === false){
      $('.wrapper_blocker').addClass('transparent');
      $('#navbar').attr("id","white_navbar");
      $('.links').removeClass('uplink');
      $('#donpic').css('top', 15);
    }
};
