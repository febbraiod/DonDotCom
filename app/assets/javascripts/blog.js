$(function(){
  $('#js-more').on('click', function(){
    var id = $(this).data("id");
    $.get(#insertRouteToEndpoint, function(resp){
      $("#post_" + id).text(resp.content);
      // append image
    });
  });
});