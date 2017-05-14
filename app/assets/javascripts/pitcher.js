            (function($){
    $(document).ready(function(){
    $('ul.dropdown-menu [data-toggle=dropdown]').on('click', function(event) {
      event.preventDefault(); 
      event.stopPropagation(); 
      $(this).parent().siblings().removeClass('open');
      $(this).parent().toggleClass('open');
    });
  });
})(jQuery);


$(document).ready(
function(){
$(".subscription").submit(
  function(){
$(".ajax5").show()

}
  )
}
  )


 $(document).ready(
  function(){
    $("#subscription_email").focus(
function(){
  $(".subscribe_success").hide()
$(".subscribe_error").hide()
$("#subscription_email").css({border:"1px solid silver"})
}
      )
  }
  )


 $(document).ready(
  setTimeout(function(){
if(window.location.href.indexOf("home") > -1) {
      $(".loader").css({display:"none"})
      $(".animate-div").css({display:"block"})

}
else{
   $(".loader").css({display:"none"})
  $(".animate-div").css({display:"block"})
}
},2000
)
)



