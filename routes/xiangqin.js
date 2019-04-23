const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get("/",(req,res)=>{
  var lid=req.query.lid;
  var output={
    product:{},
    specs:[],
    pics:[]
  }
  var sql="select * from user_neirong where lid=?";
  pool.query(sql,[lid],(err,result)=>{
    if(err) console.log(err);
	output.product=result[0];
	var sql="select lid,chima from user_neirong where family_id=?";
   pool.query(sql,[result[0]["family_id"]],(err,result)=>{
	  if(err) console.log(err);
      output.specs=result;
      var sql="select * from user_tupian where laptop_id=?"; 
     pool.query(sql,[lid],(err,result)=>{
        if(err) console.log(err);
       output.pics=result;
        
        //跨域
		res.writeHead(200,{
         "Access-Control-Allow-Origin":"*"
       });
        res.write(JSON.stringify(output));
        res.end();

	  })
	})
  })
})

module.exports=router;