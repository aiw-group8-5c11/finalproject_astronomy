$(function(){
  SyntaxHighlighter.all();
});
$(window).load(function(){
  $('.flexslider').flexslider({
    animation: "slide",
    animationLoop: false,
    itemWidth: 800,
    itemMargin: 5,
    pausePlay: true,
    start: function(slider){
      $('body').removeClass('loading');
    }
  });
});