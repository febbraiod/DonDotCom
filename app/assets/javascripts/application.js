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
//= require jquery.turbolinks
//= require jquery_ujs
//= require turbolinks
//= require posts
//= require blog
//= require design
//= require programs
//= require kerning.js


$(function(){
  bind_rinse();
  bind_repeat();
  bind_design_thumbs();
  bind_program_thumbs();
  bind_buttons();
  place_blog_images();
});

function bind_rinse(){
  $('#rinse_link').hover(function(){
    var rinse = this.text;
    $(this).text('blog');
  }, function(){
    $(this).html('<span class="don_rinse kerningjs" style="visibility: inherit;"><span class="word1" style="display: inline-block;"><span class="char1" style="display: inline-block; transform: none; margin-right: 0px;">r</span><span class="char2" style="display: inline-block; transform: none; margin-right: 0px;">i</span><span class="char3" style="display: inline-block; transform: skew(-4deg); color: rgb(4, 173, 204); margin-right: -2px;">n</span><span class="char4" style="display: inline-block; transform: none;">s</span><span class="char5" style="display: inline-block;">e</span></span></span>');
  });

  $('#rinse_link').click(function(){$(this).html('ri<span class="don">n</span>se');});
}

function bind_repeat(){
  $('#repeat_link').hover(function(){
    $(this).text('about');
  }, function(){
    $(this).text('repeat');
  });

  $('#repeat_link').click(function(){$(this).test('repeat');});
}

function bind_buttons(){

  $('.next_link').hover(function(){
    $('#next_icon').hide();
    $('#hover_next_icon').show();
  }, function(){
    $('#next_icon').show();
    $('#hover_next_icon').hide();
  });

  $('.prev_link').hover(function(){
    $('#prev_icon').hide();
    $('#hover_prev_icon').show();
  }, function(){
    $('#prev_icon').show();
    $('#hover_prev_icon').hide();
  });

}

