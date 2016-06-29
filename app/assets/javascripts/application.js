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
//= require design
//= require programs
//= require kerning.js


$(function(){
  bind_rinse();
  bind_repeat();
  bind_design_thumbs();
  bind_program_thumbs();
  place_blog_images();
});

function bind_rinse(){
  $('#rinse_link').hover(function(){
    $(this).text('blog');
  }, function(){
    $(this).html('ri<span class="don">n</span>se');
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

function place_blog_images(){
  $('.img_1').html($('.post_image_1'));
  $('.img_2').html($('.post_image_2'));
  $('.img_3').html($('.post_image_3'));
  $('.img_4').html($('.post_image_4'));
  $('.img_5').html($('.post_image_5'));
  $('.img_6').html($('.post_image_6'));
  $('.img_7').html($('.post_image_7'));
  $('.img_8').html($('.post_image_8'));
  $('.img_9').html($('.post_image_9'));
  $('.img_10').html($('.post_image_10'));
}



