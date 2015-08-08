$(function(){
  var counter = 0;
  var colors = ['blue','red','white'];

  $('button').click(function(){
    if(counter > 2){ counter = 0 };
    $('body').css('background-color',colors[counter]);
    counter++;
  });
});
