const express=require('express');
const bodyParser=require('body-parser');
const userRouter=require('./routes/user.js');
const neirong=require('./routes/neirong.js');
const xiangqin=require('./routes/xiangqin.js');
const shouye=require('./routes/shouye.js');
const gouwuche=require('./routes/gouwuche.js');

var server=express();
server.listen(5050);

//使用body-parser中间件
server.use(bodyParser.urlencoded({extended:false}));
//托管静态文件public
server.use(express.static('./public'));

server.use(bodyParser.urlencoded({
  extended:false
}));

//把用户路由器挂载到/user
// /user/register
server.use('/user',userRouter);
server.use('/neirong',neirong);
server.use('/xiangqin',xiangqin);
server.use('/shouye',shouye);
server.use('/gouwuche',gouwuche); 