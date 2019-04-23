const express=require('express');
const pool=require('../pool.js');

var router=express.Router();

//用户注册
router.post('/index',(req,res)=>{
  var i=req.body;
  var $name=i.name;
  var $upwd=i.upwd;
  var $phone=i.phone;
  var $code=i.code;
  if($name.length<3 || $name.length>8){
    res.send({code:401,msg:'name required'});
	return;
  }
  if($upwd.length<6 || $upwd.length>20){
    res.send({code:402,msg:'upwd required'});
	return;
  }
  if($phone.length!==11){
    res.send({code:403,msg:'phone required'});
	return;
  }
  if($code.length>6 || $code.length<6){
    res.send({code:404,msg:'code required'});
	return;
  }
  pool.query('INSERT INTO user_zhuche VALUES(null,?,?,?,?)',[$name,$upwd,$phone,$code],(err,result)=>{
    if(err) throw err;
	//console.log(result);
	if(result.affectedRows>0){
	  res.send('1');
	}
	
  });
});

//用户登录
router.post('/login',(req,res)=>{
  var i=req.body;
  var $name=i.name;
	if($name.length<3 || $name.length>8){
	    res.send({code:401,msg:'name required'});  
		return;
	}
	var $upwd=i.upwd;
    if($upwd.length<6 || $upwd.length>20){
	    res.send({code:402,msg:'upwd required'});  
		return;
	}
    pool.query('SELECT * FROM user_zhuche WHERE name=? AND upwd=?',[$name,$upwd],(err,result)=>{
	  if(err) throw err;
      //console.log(result);
	  if(result.length>0){
		    res.send('1'); 
		}else{
		    res.send('0'); 
		}
		//console.log(result);
	});
	
});

//导出路由器
module.exports=router;