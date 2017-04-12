$( document ).on('turbolinks:load', function() {
  
  new WOW().init();

  if( $(".button-collapse").length > 0 ){
    $(".button-collapse").sideNav();
  }

  if( $('.parallax').length > 0 ){
    $('.parallax').parallax();
  }
})
