$(function(){
  $('button').click(function(){
    var bid = $(this).attr('id');
    $('body').css('background-color', bid);
  });
});

