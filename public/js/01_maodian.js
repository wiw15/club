$( function () {
  var speed = 1000;//自定义滚动速度
  //回到顶部
  $( "#toTop").click( function () {
      $( "html,body").animate({ "scrollTop" : 0 }, speed);
      });
  //回到底部
  var windowHeight = parseInt($("body").css("height" ));//整个页面的高度
  $( "#toBottom").click(function () {
      $( "html,body").animate({ "scrollTop" : windowHeight }, speed);
  });
});