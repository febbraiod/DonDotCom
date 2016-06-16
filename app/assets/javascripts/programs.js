
function bind_program_thumbs(){
  $('.program_thumb').hover(function(){
    var image_url = this.src;
    var index = $(this).data('index');
    $('#view_' + index).children()[0].src = image_url = image_url;});
}