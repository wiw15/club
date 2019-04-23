const express=require("express");
const pool=require("../pool.js");
const router=express.Router();

router.get("/",(req,res)=>{
  var sql="select zhuti,fuzhuti,jiage,cuxiao,chima,pinjia,tupian,href from user_neirong";
  pool.query(sql,[],(err,result)=>{
    console.log(result);
    if(err) throw err;
	//跨域请求
    res.writeHead(200,{
      "Access-Control-Allow-Origin":"*"
    });
    res.write(JSON.stringify(result));
    res.end();
  });
});

module.exports=router;




