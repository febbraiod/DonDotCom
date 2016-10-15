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
