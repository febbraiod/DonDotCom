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


$(function(){
  bind_rinse();
  bind_repeat();
});

function bind_rinse(){
  $('#rinse_link').hover( function(){
    $(this).text('blog');
  }, function(){
    $(this).html('ri<span class="don">n</span>se');
  });

  $('#rinse_link').click(function(){$(this).html('ri<span class="don">n</span>se');});
}

function bind_repeat(){
  $('#repeat_link').hover( function(){
    $(this).text('about');
  }, function(){
    $(this).text('repeat');
  });

  $('#repeat_link').click(function(){$(this).test('repeat');});
}
