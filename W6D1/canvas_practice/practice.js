document.addEventListener("DOMContentLoaded", function(){
  var canvas = document.getElementById('mycanvas');
  canvas.height = 500;
  canvas.width = 500;
  var ctx = canvas.getContext('2d');

  ctx.fillStyle ='gray';
  ctx.fillRect(10,10, 100, 100);

  ctx.beginPath();
  ctx.arc(20, 20, 50, 0, 360);
  ctx.strokeStyle = 'black';
  ctx.lineWidth = 2;
  ctx.fillStyle = 'purple';
  ctx.fill();
  ctx.stroke();



});
