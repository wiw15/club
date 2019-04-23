// ajax 购物车
$(function(){
  $.ajax({
    url:"/gouwuche",
    type:"get",
    //data:{lid}, //{lid:lid} 用lid作为查询参数
    dataType:"json",
    success:function(result){
      console.log(result);
    }
  })
});
