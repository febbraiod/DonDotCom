$(function(){
  $('.js-more').on('click', function(){
    var slug = $(this).attr("data-id");
    $.get("/blog/" + slug + ".json", function(resp){
      $("#post_" + slug).text(resp.post.content);
      $("#post_" + slug + "_images").removeClass('hidden');
    });
    $(this).hide();
  });
});