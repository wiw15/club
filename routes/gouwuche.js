const express=require("express");
const pool=require("../pool.js");
const router=express.Router();

//功能：购物车查询
router.get('/',(req,res)=>{
  //var uid=1//req.session.uid;
  var sql="select lid,uid,pid,zhuti,guanfa,jiage,tupian from gouwuche";
  pool.query(sql,[],(err,result)=>{
    console.log(result);
	if(err)throw err;
	res.writeHead(200,{
	  "Access-Control-Allow-Origin":"*"
	});
	res.write(JSON.stringify(result));
	res.end();
  })
  //console.log(result);
})

module.exports=router;