/* ===================================== /
/  =Slider /
/ ===================================== */

$(document).ready(function() {
 
  $("#slider").owlCarousel({
 
      navigation : false,
      pagination : false,
      autoPlay : 6000,
      slideSpeed : 300,
      paginationSpeed : 400,
      singleItem : true
 
  });
 
});

/* ===================================== /
/  =Animations /
/ ===================================== */

function onScrollInit( items, trigger ) {
  items.each( function() {
    var osElement = $(this),
        osAnimationClass = osElement.attr('data-os-animation'),
        osAnimationDelay = osElement.attr('data-os-animation-delay');
 
    osElement.css({
        '-webkit-animation-delay':  osAnimationDelay,
        '-moz-animation-delay':     osAnimationDelay,
        'animation-delay':          osAnimationDelay
    });
 
    var osTrigger = ( trigger ) ? trigger : osElement;
 
    osTrigger.waypoint(function() {
        osElement.addClass('animated').addClass(osAnimationClass);
    },{
        triggerOnce: true,
        offset: '90%'
    });
  });
}

onScrollInit( $('.os-animation') );