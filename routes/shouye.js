const express=require("express");
const pool=require("../pool.js");
const router=express.Router();

router.get("/",(req,res)=>{
  var sql="select name,upwd,phone,code from user_zhuche";
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    //console.log(result);
	//跨域请求
    res.writeHead(200,{
      "Access-Control-Allow-Origin":"*"
    });
    res.write(JSON.stringify(result));
    res.end();
  });
  
});

module.exports=router;