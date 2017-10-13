// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .

$.fn.scrollReveal();  

$(window).scroll(function () {
        if ($(window).scrollTop() > 100) {
            $(".navbackground").addClass('meffect');
              $(".navbar-light").find("a.navbar-brand1").addClass("navbar-scroll");
              $(".navbar-light").find(".navbar-nav").find("a.nav-link").addClass("navlinkscroll");
            
        } else {
            $(".navbackground").removeClass('meffect');
            $(".navbar-light").find("a.navbar-brand1").removeClass("navbar-scroll");
        }
    });
