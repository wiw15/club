 //获取商品数据
 (function(){
  $.ajax({
    url:"/neirong",
    type:"get",
    //data:"",
    dataType:"json" //自动JSON.parse() 自动转换成数组
  }) //return Promise
     //       Open(result)
     //            ↓
  .then(function(result){
    //console.log(result);

    //内容第一行 第一个
    var html="";
    for(var i=0;i<result.length;i++){
       var p=result[i];
      html+=`
      <li>
      <a href="${p.href}" target="_blank">
        <div class="l_1">
           <div class="l_1_1" title="${p.fuzhuti}">
           <img src="${p.tupian}">
         </div>
         <div class="l_1_2">
           <strong><em>¥&nbsp;</em>${p.jiage.toFixed(2)}</strong>
         </div>
         <div class="l_1_3" title="${p.fuzhuti}">
           <a href="${p.href}" target="_blank"><span>${p.zhuti}</span></a>
         </div>
         <div class="l_1_4">
           <strong>已有<a href="${p.href}">${p.pinjia}+</a>人点赞</strong>
         </div>
         <div class="l_1_5">
           <span>自营</span>
         </div>
         <div class="l_1_6">  
           <div class="l_a">
           <a href="javascript:;" target="_blank">
             <img class="l_a_img1" src="./img/shang_neirong/shangpin/小爱心.png">
             <img class="l_a_img2" src="./img/shang_neirong/shangpin/小爱心2.png">
             <span>关注</span>
           </a>
         </div>
         <div class="l_a2">
         <a href="${p.href}" target="_blank">
           <img src="img/shang_neirong/shangpin/购物车.png">
           <span>加入购物车</span>
         </a>
         </div>
       </div>
      </a> 
      </li>
     `;
    }
    //console.log(html);
    var dd=document.getElementsByClassName("nei");
    dd[0].innerHTML=html;

  })  
})();