$(".d>ul>li").hover(function(){
  //获取当前滑过是第几个元素
  var eq=$(".d>ul>li").index(this),
  //获取当前下拉菜单距离窗口多少像素
      h=$(".d").offset().top,
  //获取浏览器滚动了多少高度		    
      s=$(window).scrollTop(),
  //当前元素滑过距离窗口多少像素		
      i=$(this).offset().top,
  //下拉菜单子类内容容器的高度	
      item=$(this).children(".d_1").height(),
  //父类分类列表容器的高度	
      sort=$(".d").height();			
  //如果子类的高度小于父类的高度	
  if(item<sort){
    if(eq==0){
      $(this).children(".d_1").css("top",(i-h));
    }else{
      $(this).children('.d_1').css('top', (i-h)+1);
    }
  }else {
    if(s>h){ //判断子类的显示位置，如果滚动的高度大于所有分类列表容器的高度
    //则 继续判断当前滑过容器的位置 是否有一半超出窗口一半在窗口内显示的Bug,
      if(i-s>0){
        $(this).children(".d_1").css("top", (s-h)+2);
      }else{
        $(this).children(".d_1").css("top", (s-h)-(-(i-s))+2 );
      }
    }else{
      $(this).children(".d_1").css("top", 3 );
    }	
  }
  
  $(this).addClass("hover");
  $(this).children(".d_1").css("display","block");
},function(){
  $(this).removeClass("hover");
  $(this).children(".d_1").css("display","none");
});