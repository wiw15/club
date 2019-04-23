//周期性定时器
  //1.定义任务函数
  function task(){
    var img=document.getElementsByClassName("show")[0]; //查找class为show的当前img
    img.className=""; //将当前img的class清除
    //如果当前img有下一个兄弟元素
    if(img.nextElementSibling!==null){
      //才设置当前img的下一个兄弟的class为show 
      img.nextElementSibling.className="show"; 
    }else{ //否则
      //设置当前img的父元素的第一个孩子的class为show 
      //img.parentNode.childNodes.className="show";
       var fa=document.getElementById("fa");
      fa.className="show"
    }
  }
    //2.启动定时器
    setInterval(task,3000);