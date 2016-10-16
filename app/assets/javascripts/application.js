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
  bind_design_link();
  bind_rinse();
  bind_repeat();
  bind_design_thumbs();
  bind_program_thumbs();
  bind_buttons();
  place_blog_images();
  bind_programming_link();
});

function bind_design_link(){
  $('#design_link').hover(function(){
    $('.don_design').attr('id', 'don_design');
  }, function(){
    $('.don_design').removeAttr('id');
  });
}

function bind_programming_link(){
  $('#programming_link').hover(function(){
    $('.don_program').attr('id', 'don_program');
  }, function(){
    $('.don_program').removeAttr('id');
  });
}

function bind_rinse(){
  $('#rinse_link').hover(function(){
    var rinse = this.text;
    $(this).text('blog');
  }, function(){
    $(this).html('<span class="don_rinse kerningjs" style="visibility: inherit;"><span class="word1" style="display: inline-block;"><span class="char1" style="display: inline-block; transform: none; margin-right: 0px;">r</span><span class="char2" style="display: inline-block; transform: none; margin-right: 0px;">i</span><span class="char3" style="display: inline-block; transform: skew(-4deg); color: rgb(4, 173, 204); margin-right: -2px;">n</span><span class="char4" style="display: inline-block; transform: none;">s</span><span class="char5" style="display: inline-block;">e</span></span></span>');
  });

  $('#blog_link').hover(function(){
    $('#rinse_link').html('<span id="don_rinse">blog</span>');
  }, function(){
    $('#rinse_link').html('<span class="don_rinse kerningjs" style="visibility: inherit;"><span class="word1" style="display: inline-block;"><span class="char1" style="display: inline-block; transform: none; margin-right: 0px;">r</span><span class="char2" style="display: inline-block; transform: none; margin-right: 0px;">i</span><span class="char3" style="display: inline-block; transform: skew(-4deg); color: rgb(4, 173, 204); margin-right: -2px;">n</span><span class="char4" style="display: inline-block; transform: none;">s</span><span class="char5" style="display: inline-block;">e</span></span></span>');

  });
}

function bind_repeat(){
  $('#repeat_link').hover(function(){
    $(this).text('about');
  }, function(){
    $(this).text('repeat');
  });

  $('#about_link').hover(function(){
    $('#repeat_link').html('<span id="don_rinse">about</span>');
    $('#donpic_homepage_hover').show();
    $('#donpic_homepage').hide();
  }, function(){
    $('#repeat_link').html('<a id="repeat_link" href="/about">repeat</a>');
    $('#donpic_homepage').show();
    $('#donpic_homepage_hover').hide();
  });
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
      $('#donpic').attr("id","donpic_down");
    }
};

var makeTransparent = function(){
  if($('.wrapper_blocker').hasClass('transparent') === false){
      $('.wrapper_blocker').addClass('transparent');
      $('#navbar').attr("id","white_navbar");
      $('.links').removeClass('uplink');
      $('#donpic_down').attr("id","donpic");
    }
};

