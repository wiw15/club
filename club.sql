SET NAMES UTF8;
DROP DATABASE IF EXISTS Club;
CREATE DATABASE Club CHARSET=UTF8;
USE Club;

/**user_zhuche 用户注册**/
CREATE TABLE user_zhuche(
  sid       INT PRIMARY KEY AUTO_INCREMENT,   #编号
  name      VARCHAR(12),		              #用户名
  upwd      VARCHAR(12),                      #密码
  phone     VARCHAR(11),                      #手机号
  code      VARCHAR(6)                        #验证码
);

/** 用户注册 **/
INSERT INTO user_zhuche VALUES
('1','wwww',123456,'12121212121','123456'),
('2','dongdong',1234567,'000000','123');


/**user_neirong 商品**/
CREATE TABLE user_neirong(
  lid       INT PRIMARY KEY AUTO_INCREMENT,   #编号
  family_id INT,                              #家族编号
  zhuti     VARCHAR(128),                     #主标题
  fuzhuti   VARCHAR(128),                     #副标题 
  jiage     DECIMAL(8,2),                     #价格
  cuxiao    VARCHAR(128),                     #促销
  chima     VARCHAR(12),                      #尺码
  pinjia    VARCHAR(8),                       #评价人数
  tupian    VARCHAR(128),                     #图片
  href      VARCHAR(128)                      #跳转的路径
);

/**user_tupian 商品图片**/
CREATE TABLE user_tupian(
  pid INT PRIMARY KEY AUTO_INCREMENT,         #编号
  laptop_id INT,                              #女装新品编号
  sm VARCHAR(128),                            #小图片路径
  md VARCHAR(128),                            #中图片路径
  lg VARCHAR(128)                             #大图片路径
);

/** 购物车 **/
CREATE TABLE gouwuche(
  lid       INT PRIMARY KEY AUTO_INCREMENT,   #编号
  uid       INT,                              #用户id
  pid       INT,                              #商品id  
  zhuti     VARCHAR(128),                     #主标题
  guanfa   VARCHAR(128),                      #旗舰店
  jiage     DECIMAL(8,2),                     #价格
  tupian    VARCHAR(128)                      #图片
);



/** 数据导入 **/
/**************/
/**user_neirong 商品详情**/
INSERT INTO user_neirong VALUES
(null,1,'红蜻蜓 连衣裙长袖2019春季新款粉色V领系带印花甜美中长款百搭淑女修身显瘦欧洲站雪纺性感连衣裙女装 图片色 M','红蜻蜓品牌授权！品质保障！售后无忧！请放心购买！',259.00,'满2件，总价打9折，满3件，总价打8折','S M L XL',500,'img/shang_neirong/shangpin/liebiao/1.jpg','05_xiangqin.html?lid=1'),
(null,2,'红蜻蜓 连衣裙女长袖2019春夏新款九分袖A字裙中长款百搭淑女修身显瘦裙子欧洲站雪纺性感连衣裙女装 图片色 M','红蜻蜓品牌授权！品质保障！售后无忧！请放心购买！',249.00,'满2件，总价打9折，满3件，总价打8折','S M L XL',500,'img/shang_neirong/shangpin/liebiao/2.jpg','05_xiangqin.html?lid=2'),
(null,3,'红蜻蜓 休闲裤女2019春夏季新款时尚韩版打底裤百搭九分裤女修身显瘦OL通勤职业高腰裤子女阔腿裤女装 黑色-后松紧腰 M','红蜻蜓品牌授权！品质保障！售后无忧！请放心购买！',99.00,'满2件，总价打9折；满3件，总价打8折','S M L XL XXL XXXL',500,'img/shang_neirong/shangpin/liebiao/3.jpg','05_xiangqin.html?lid=3'),
(null,4,'红蜻蜓 牛仔裤女2019春夏季新款学生中高腰弹力百搭毛边直筒九分喇叭裤女外穿微喇裤子修身显瘦阔腿裤女 蓝色八分裤 28','红蜻蜓品牌授权！品质保障！售后无忧！请放心购买!',128.00,'满69减10','26 27 28 29 30 31 25',600,'img/shang_neirong/shangpin/liebiao/4.jpg','05_xiangqin.html?lid=4'),
(null,5,'红蜻蜓 白衬衫女长袖2019春夏季新款学生韩版上衣修身显瘦气质OL工作装雪纺衫职业打底衫百搭衬衣女装 白色 M','红蜻蜓品牌授权！品质保障！售后无忧！请放心购买!',169.00,'满69减10','S M L XL',600,'img/shang_neirong/shangpin/liebiao/5.jpg','05_xiangqin.html?lid=5'),
(null,6,'红蜻蜓 T恤女2019春夏季新款韩版时尚印花上衣圆领T恤学生休闲百搭宽松短袖女装打底衫 卡其 M','红蜻蜓品牌授权！品质保障！售后无忧！请放心购买!',98.00,'满69减10 满300减30','M L XL XXL XXXL 4XL',600,'img/shang_neirong/shangpin/liebiao/6.jpg','05_xiangqin.html?lid=6'),
(null,7,'红蜻蜓 T恤女2019春夏季新款韩版学生宽松休闲时尚圆领T恤短袖修身打底衫女百搭短袖上衣女t恤 白色 M','红蜻蜓品牌授权！品质保障！售后无忧！请放心购买!',98.00,'满69减10 满300减30','S M L XL XXL XXXL',600,'img/shang_neirong/shangpin/liebiao/7.jpg','05_xiangqin.html?lid=7'),
(null,8,'子牧棉麻碎花连衣裙2019春装新款 女民族风大码宽松显瘦长裙连衣裙0688 白色 L','club蝴蝶节！3月7日0-2点全场2件7.8折/3件6.8折',119.00,'每满300，立返30元现金','M L XL XXL',400,'img/shang_neirong/shangpin/liebiao/8.jpg','05_xiangqin.html?lid=8'),
(null,9,'子牧棉麻2019春装新款 女文艺中长裙宽松显瘦气质长袖印花连衣裙8150 白色 XXL','club蝴蝶节！3月7日0-2点全场2件7.8折/3件6.8折',119.00,'每满300，立返30元现金','L XL XXL',400,'img/shang_neirong/shangpin/liebiao/9.jpg','05_xiangqin.html?lid=9'),
(null,10,'珂玮休闲裤女2019春季新款韩版哈伦裤女九分长裤英伦格子开叉直筒小脚裤宽松正装西裤 咖啡格 M','7-9日蝴蝶节【0-2点抢20元无门槛券】全店满199-20【跨店每满300-30】支持货到付款！详情点击店铺首页。',149.00,'每满300元，可减30元','S M L XL XXL',200,'img/shang_neirong/shangpin/liebiao/10.jpg','05_xiangqin.html?lid=10'),
(null,11,'子牧棉麻连衣裙女2019春夏新款 女民族风印花圆领文艺宽松显瘦七分袖连衣裙8667 花色 L','club蝴蝶节！3月7日0-2点全场2件7.8折/3件6.8折',108.00,'每满300，立返30元现金','M L XL XXL',200,'img/shang_neirong/shangpin/liebiao/11.jpg','05_xiangqin.html?lid=11'),
(null,12,'娅丽达女裤2019春季新款黑色牛仔裤女韩版显瘦弹力铅笔裤子九分裤I1132 黑色(A0) 29(二尺二)','3.7日0-2点全场折后再2件7.5折3件6.5折！叠加club100元优惠券！',169.00,'满199元减30元，满399元减60元','26(一尺九) 27(二尺) 28(二尺一) 29(二尺二) 30(二尺三) 31(二尺四) 32(二尺五) 33(二尺六) 34(二尺七) 35(二尺八)',200,'img/shang_neirong/shangpin/liebiao/12.jpg','05_xiangqin.html?lid=12'),
(null,13,'水墨佳人中老年女装妈妈装春季短外套中年女春装洋气长袖上衣中老年刺绣夹克6193238 橘色 XL【建议116-125斤】','【club蝴蝶节】春装焕新：全场满199减30/399减60！叠加每满300-30！关注店铺领券叠加享折上折！',218.00,'满199元减30元，满399元减60元','M(建议105斤以内) L(建议106-115斤) XL(建议116-125斤) 2XL(建议126-135斤) 3XL(建议136-145斤) 4XL(建议146-160斤)',100,'img/shang_neirong/shangpin/liebiao/13.jpg','05_xiangqin.html?lid=13'),
(null,14,'璞衣2019春装新款 女长袖宽松刺绣上衣立领衬衫8919 白色 M','全场2件8折3/件7折/叠加券（优惠到手=6折举例：3件300元-7折后=210元30元店铺券=实付180）',129.00,' 03月07日 00:00 该商品参加跨店铺满减活动 ，每满300元，可减30元','M L XL XXL',100,'img/shang_neirong/shangpin/liebiao/14.jpg','05_xiangqin.html?lid=14'),
(null,15,'韩潮袭人 牛仔短外套女2019春装新品韩版修身显瘦拼接做旧连帽牛仔外套百搭休闲宽松复古文艺假两件夹克 怀旧蓝 M','直击底价，后惠无期',149.00,'购买女装商品满1元即返男装满199减100优惠券 ','M L XL',100,'img/shang_neirong/shangpin/liebiao/15.jpg','05_xiangqin.html?lid=15'),
(null,16,'bobowaltz雪纺长袖衬衫女2019春季新品 欧洲站时尚气质蝴蝶结雪纺印花衬衣韩版上衣女 粉红色印花 S','【蝴蝶节品牌闪购特卖场】全场1件9折2件8.5折！限时折上折，单件低至8.1折，领券下单更优惠！',214.20,'每满300元，可减30元','S M L XL',100,'img/shang_neirong/shangpin/liebiao/16.jpg','05_xiangqin.html?lid=16'),
(null,17,'水墨佳人中老年女装中袖连衣裙纯色妈妈装2019春装连衣裙中年女时尚半袖圆领裙子8193731 藏青色 M【建议105斤以内】','【club蝴蝶节】春装焕新：全场满199减30/399减60！叠加600-100（数量有限）！关注店铺领券叠加享折上折！',178.20,' 满199元减30元，满399元减60元 ','M【建议105斤以内】 L【建议106-115斤】 XL【建议116-125斤】 2XL【建议126-135斤】 3XL【建议136-145斤】 4XL【建议146-160斤】',100,'img/shang_neirong/shangpin/liebiao/17.jpg','05_xiangqin.html?lid=17'),
(null,18,'【品质好货】子牧棉麻休闲裤女2019春装新款 女微喇叭高腰显瘦垂感裤子鱼尾裤长休闲裤7221 黑色 S','club蝴蝶节！3月8日0-2点全场2件7.5折/3件6.5折',99.00,'每满300元，可减30元','S M L XL XXL 3XL 4XL',900,'img/shang_neirong/shangpin/liebiao/18.jpg','05_xiangqin.html?lid=18'),
(null,19,'韩潮袭人 针织衫女2019春装新品韩版撞色条纹修身显瘦长袖毛衣百搭休闲宽松套头针织打底衫 蓝黄条 M','直击底价，后惠无期',138.00,'满2件，总价打8折；满3件','M L XL',100,'img/shang_neirong/shangpin/liebiao/19.jpg','05_xiangqin.html?lid=19'),
(null,20,'韩潮袭人 长袖衬衫女2019春装新款韩版休闲纯色拼接女士打底衬衣百搭修身显瘦娃娃领打底衫 水银灰 L','直击底价，后惠无期',128.00,'满2件，总价打8折；满3件，总价打7折','M L XL',100,'img/shang_neirong/shangpin/liebiao/20.jpg','05_xiangqin.html?lid=20');


/**user_tupian 商品图片**/
INSERT INTO user_tupian VALUES
(NULL,1,'img/shang_neirong/shangpin/sm/1-1.jpg','img/shang_neirong/shangpin/md/1-1.jpg','img/shang_neirong/shangpin/lg/1-1.jpg'),
(NULL,1,'img/shang_neirong/shangpin/sm/1-2.jpg','img/shang_neirong/shangpin/md/1-2.jpg','img/shang_neirong/shangpin/lg/1-2.jpg'),
(NULL,1,'img/shang_neirong/shangpin/sm/1-3.jpg','img/shang_neirong/shangpin/md/1-3.jpg','img/shang_neirong/shangpin/lg/1-3.jpg'),
(NULL,1,'img/shang_neirong/shangpin/sm/1-4.jpg','img/shang_neirong/shangpin/md/1-4.jpg','img/shang_neirong/shangpin/lg/1-4.jpg'),
(NULL,1,'img/shang_neirong/shangpin/sm/1-5.jpg','img/shang_neirong/shangpin/md/1-5.jpg','img/shang_neirong/shangpin/lg/1-5.jpg'),
(NULL,1,'img/shang_neirong/shangpin/sm/1-6.jpg','img/shang_neirong/shangpin/md/1-6.jpg','img/shang_neirong/shangpin/lg/1-6.jpg'),
(NULL,2,'img/shang_neirong/shangpin/sm/2-1.jpg','img/shang_neirong/shangpin/md/2-1.jpg','img/shang_neirong/shangpin/lg/2-1.jpg'),
(NULL,2,'img/shang_neirong/shangpin/sm/2-2.jpg','img/shang_neirong/shangpin/md/2-2.jpg','img/shang_neirong/shangpin/lg/2-2.jpg'),
(NULL,2,'img/shang_neirong/shangpin/sm/2-3.jpg','img/shang_neirong/shangpin/md/2-3.jpg','img/shang_neirong/shangpin/lg/2-3.jpg'),
(NULL,2,'img/shang_neirong/shangpin/sm/2-4.jpg','img/shang_neirong/shangpin/md/2-4.jpg','img/shang_neirong/shangpin/lg/2-4.jpg'),
(NULL,2,'img/shang_neirong/shangpin/sm/2-5.jpg','img/shang_neirong/shangpin/md/2-5.jpg','img/shang_neirong/shangpin/lg/2-5.jpg'),
(NULL,3,'img/shang_neirong/shangpin/sm/3-1.jpg','img/shang_neirong/shangpin/md/3-1.jpg','img/shang_neirong/shangpin/lg/3-1.jpg'),
(NULL,3,'img/shang_neirong/shangpin/sm/3-2.jpg','img/shang_neirong/shangpin/md/3-2.jpg','img/shang_neirong/shangpin/lg/3-2.jpg'),
(NULL,3,'img/shang_neirong/shangpin/sm/3-3.jpg','img/shang_neirong/shangpin/md/3-3.jpg','img/shang_neirong/shangpin/lg/3-3.jpg'),
(NULL,3,'img/shang_neirong/shangpin/sm/3-4.jpg','img/shang_neirong/shangpin/md/3-4.jpg','img/shang_neirong/shangpin/lg/3-4.jpg'),
(NULL,3,'img/shang_neirong/shangpin/sm/3-5.jpg','img/shang_neirong/shangpin/md/3-5.jpg','img/shang_neirong/shangpin/lg/3-5.jpg'),
(NULL,4,'img/shang_neirong/shangpin/sm/4-1.jpg','img/shang_neirong/shangpin/md/4-1.jpg','img/shang_neirong/shangpin/lg/4-1.jpg'),
(NULL,4,'img/shang_neirong/shangpin/sm/4-2.jpg','img/shang_neirong/shangpin/md/4-2.jpg','img/shang_neirong/shangpin/lg/4-2.jpg'),
(NULL,4,'img/shang_neirong/shangpin/sm/4-3.jpg','img/shang_neirong/shangpin/md/4-3.jpg','img/shang_neirong/shangpin/lg/4-3.jpg'),
(NULL,4,'img/shang_neirong/shangpin/sm/4-4.jpg','img/shang_neirong/shangpin/md/4-4.jpg','img/shang_neirong/shangpin/lg/4-4.jpg'),
(NULL,4,'img/shang_neirong/shangpin/sm/4-5.jpg','img/shang_neirong/shangpin/md/4-5.jpg','img/shang_neirong/shangpin/lg/4-5.jpg'),
(NULL,4,'img/shang_neirong/shangpin/sm/4-6.jpg','img/shang_neirong/shangpin/md/4-6.jpg','img/shang_neirong/shangpin/lg/4-6.jpg'),
(NULL,5,'img/shang_neirong/shangpin/sm/5-1.jpg','img/shang_neirong/shangpin/md/5-1.jpg','img/shang_neirong/shangpin/lg/5-1.jpg'),
(NULL,5,'img/shang_neirong/shangpin/sm/5-2.jpg','img/shang_neirong/shangpin/md/5-2.jpg','img/shang_neirong/shangpin/lg/5-2.jpg'),
(NULL,5,'img/shang_neirong/shangpin/sm/5-3.jpg','img/shang_neirong/shangpin/md/5-3.jpg','img/shang_neirong/shangpin/lg/5-3.jpg'),
(NULL,5,'img/shang_neirong/shangpin/sm/5-4.jpg','img/shang_neirong/shangpin/md/5-4.jpg','img/shang_neirong/shangpin/lg/5-4.jpg'),
(NULL,5,'img/shang_neirong/shangpin/sm/5-5.jpg','img/shang_neirong/shangpin/md/5-5.jpg','img/shang_neirong/shangpin/lg/5-5.jpg'),
(NULL,6,'img/shang_neirong/shangpin/sm/6-1.jpg','img/shang_neirong/shangpin/md/6-1.jpg','img/shang_neirong/shangpin/lg/6-1.jpg'),
(NULL,6,'img/shang_neirong/shangpin/sm/6-2.jpg','img/shang_neirong/shangpin/md/6-2.jpg','img/shang_neirong/shangpin/lg/6-2.jpg'),
(NULL,6,'img/shang_neirong/shangpin/sm/6-3.jpg','img/shang_neirong/shangpin/md/6-3.jpg','img/shang_neirong/shangpin/lg/6-3.jpg'),
(NULL,6,'img/shang_neirong/shangpin/sm/6-4.jpg','img/shang_neirong/shangpin/md/6-4.jpg','img/shang_neirong/shangpin/lg/6-4.jpg'),
(NULL,6,'img/shang_neirong/shangpin/sm/6-5.jpg','img/shang_neirong/shangpin/md/6-5.jpg','img/shang_neirong/shangpin/lg/6-5.jpg'),
(NULL,7,'img/shang_neirong/shangpin/sm/7-1.jpg','img/shang_neirong/shangpin/md/7-1.jpg','img/shang_neirong/shangpin/lg/7-1.jpg'),
(NULL,7,'img/shang_neirong/shangpin/sm/7-2.jpg','img/shang_neirong/shangpin/md/7-2.jpg','img/shang_neirong/shangpin/lg/7-2.jpg'),
(NULL,7,'img/shang_neirong/shangpin/sm/7-3.jpg','img/shang_neirong/shangpin/md/7-3.jpg','img/shang_neirong/shangpin/lg/7-3.jpg'),
(NULL,7,'img/shang_neirong/shangpin/sm/7-4.jpg','img/shang_neirong/shangpin/md/7-4.jpg','img/shang_neirong/shangpin/lg/7-4.jpg'),
(NULL,7,'img/shang_neirong/shangpin/sm/7-5.jpg','img/shang_neirong/shangpin/md/7-5.jpg','img/shang_neirong/shangpin/lg/7-5.jpg'),

(NULL,8,'img/shang_neirong/shangpin/sm/8-1.jpg','img/shang_neirong/shangpin/md/8-1.jpg','img/shang_neirong/shangpin/lg/8-1.jpg'),
(NULL,8,'img/shang_neirong/shangpin/sm/8-2.jpg','img/shang_neirong/shangpin/md/8-2.jpg','img/shang_neirong/shangpin/lg/8-2.jpg'),
(NULL,8,'img/shang_neirong/shangpin/sm/8-3.jpg','img/shang_neirong/shangpin/md/8-3.jpg','img/shang_neirong/shangpin/lg/8-3.jpg'),
(NULL,8,'img/shang_neirong/shangpin/sm/8-4.jpg','img/shang_neirong/shangpin/md/8-4.jpg','img/shang_neirong/shangpin/lg/8-4.jpg'),
(NULL,8,'img/shang_neirong/shangpin/sm/8-5.jpg','img/shang_neirong/shangpin/md/8-5.jpg','img/shang_neirong/shangpin/lg/8-5.jpg'),

(NULL,9,'img/shang_neirong/shangpin/sm/9-1.jpg','img/shang_neirong/shangpin/md/9-1.jpg','img/shang_neirong/shangpin/lg/9-1.jpg'),
(NULL,9,'img/shang_neirong/shangpin/sm/9-2.jpg','img/shang_neirong/shangpin/md/9-2.jpg','img/shang_neirong/shangpin/lg/9-2.jpg'),
(NULL,9,'img/shang_neirong/shangpin/sm/9-3.jpg','img/shang_neirong/shangpin/md/9-3.jpg','img/shang_neirong/shangpin/lg/9-3.jpg'),
(NULL,9,'img/shang_neirong/shangpin/sm/9-4.jpg','img/shang_neirong/shangpin/md/9-4.jpg','img/shang_neirong/shangpin/lg/9-4.jpg'),
(NULL,9,'img/shang_neirong/shangpin/sm/9-5.jpg','img/shang_neirong/shangpin/md/9-5.jpg','img/shang_neirong/shangpin/lg/9-5.jpg'),

(NULL,10,'img/shang_neirong/shangpin/sm/10-1.jpg','img/shang_neirong/shangpin/md/10-1.jpg','img/shang_neirong/shangpin/lg/10-1.jpg'),
(NULL,10,'img/shang_neirong/shangpin/sm/10-2.jpg','img/shang_neirong/shangpin/md/10-2.jpg','img/shang_neirong/shangpin/lg/10-2.jpg'),
(NULL,10,'img/shang_neirong/shangpin/sm/10-3.jpg','img/shang_neirong/shangpin/md/10-3.jpg','img/shang_neirong/shangpin/lg/10-3.jpg'),
(NULL,10,'img/shang_neirong/shangpin/sm/10-4.jpg','img/shang_neirong/shangpin/md/10-4.jpg','img/shang_neirong/shangpin/lg/10-4.jpg'),
(NULL,10,'img/shang_neirong/shangpin/sm/10-5.jpg','img/shang_neirong/shangpin/md/10-5.jpg','img/shang_neirong/shangpin/lg/10-5.jpg'),

(NULL,11,'img/shang_neirong/shangpin/sm/11-1.jpg','img/shang_neirong/shangpin/md/11-1.jpg','img/shang_neirong/shangpin/lg/11-1.jpg'),
(NULL,11,'img/shang_neirong/shangpin/sm/11-2.jpg','img/shang_neirong/shangpin/md/11-2.jpg','img/shang_neirong/shangpin/lg/11-2.jpg'),
(NULL,11,'img/shang_neirong/shangpin/sm/11-3.jpg','img/shang_neirong/shangpin/md/11-3.jpg','img/shang_neirong/shangpin/lg/11-3.jpg'),
(NULL,11,'img/shang_neirong/shangpin/sm/11-4.jpg','img/shang_neirong/shangpin/md/11-4.jpg','img/shang_neirong/shangpin/lg/11-4.jpg'),
(NULL,11,'img/shang_neirong/shangpin/sm/11-5.jpg','img/shang_neirong/shangpin/md/11-5.jpg','img/shang_neirong/shangpin/lg/11-5.jpg'),

(NULL,12,'img/shang_neirong/shangpin/sm/12-1.jpg','img/shang_neirong/shangpin/md/12-1.jpg','img/shang_neirong/shangpin/lg/12-1.jpg'),
(NULL,12,'img/shang_neirong/shangpin/sm/12-2.jpg','img/shang_neirong/shangpin/md/12-2.jpg','img/shang_neirong/shangpin/lg/12-2.jpg'),
(NULL,12,'img/shang_neirong/shangpin/sm/12-3.jpg','img/shang_neirong/shangpin/md/12-3.jpg','img/shang_neirong/shangpin/lg/12-3.jpg'),
(NULL,12,'img/shang_neirong/shangpin/sm/12-4.jpg','img/shang_neirong/shangpin/md/12-4.jpg','img/shang_neirong/shangpin/lg/12-4.jpg'),
(NULL,12,'img/shang_neirong/shangpin/sm/12-5.jpg','img/shang_neirong/shangpin/md/12-5.jpg','img/shang_neirong/shangpin/lg/12-5.jpg'),

(NULL,13,'img/shang_neirong/shangpin/sm/13-1.jpg','img/shang_neirong/shangpin/md/13-1.jpg','img/shang_neirong/shangpin/lg/13-1.jpg'),
(NULL,13,'img/shang_neirong/shangpin/sm/13-2.jpg','img/shang_neirong/shangpin/md/13-2.jpg','img/shang_neirong/shangpin/lg/13-2.jpg'),
(NULL,13,'img/shang_neirong/shangpin/sm/13-3.jpg','img/shang_neirong/shangpin/md/13-3.jpg','img/shang_neirong/shangpin/lg/13-3.jpg'),
(NULL,13,'img/shang_neirong/shangpin/sm/13-4.jpg','img/shang_neirong/shangpin/md/13-4.jpg','img/shang_neirong/shangpin/lg/13-4.jpg'),
(NULL,13,'img/shang_neirong/shangpin/sm/13-5.jpg','img/shang_neirong/shangpin/md/13-5.jpg','img/shang_neirong/shangpin/lg/13-5.jpg'),

(NULL,14,'img/shang_neirong/shangpin/sm/14-1.jpg','img/shang_neirong/shangpin/md/14-1.jpg','img/shang_neirong/shangpin/lg/14-1.jpg'),
(NULL,14,'img/shang_neirong/shangpin/sm/14-2.jpg','img/shang_neirong/shangpin/md/14-2.jpg','img/shang_neirong/shangpin/lg/14-2.jpg'),
(NULL,14,'img/shang_neirong/shangpin/sm/14-3.jpg','img/shang_neirong/shangpin/md/14-3.jpg','img/shang_neirong/shangpin/lg/14-3.jpg'),
(NULL,14,'img/shang_neirong/shangpin/sm/14-4.jpg','img/shang_neirong/shangpin/md/14-4.jpg','img/shang_neirong/shangpin/lg/14-4.jpg'),
(NULL,14,'img/shang_neirong/shangpin/sm/14-5.jpg','img/shang_neirong/shangpin/md/14-5.jpg','img/shang_neirong/shangpin/lg/14-5.jpg'),

(NULL,15,'img/shang_neirong/shangpin/sm/15-1.jpg','img/shang_neirong/shangpin/md/15-1.jpg','img/shang_neirong/shangpin/lg/15-1.jpg'),
(NULL,15,'img/shang_neirong/shangpin/sm/15-2.jpg','img/shang_neirong/shangpin/md/15-2.jpg','img/shang_neirong/shangpin/lg/15-2.jpg'),
(NULL,15,'img/shang_neirong/shangpin/sm/15-3.jpg','img/shang_neirong/shangpin/md/15-3.jpg','img/shang_neirong/shangpin/lg/15-3.jpg'),
(NULL,15,'img/shang_neirong/shangpin/sm/15-4.jpg','img/shang_neirong/shangpin/md/15-4.jpg','img/shang_neirong/shangpin/lg/15-4.jpg'),
(NULL,15,'img/shang_neirong/shangpin/sm/15-5.jpg','img/shang_neirong/shangpin/md/15-5.jpg','img/shang_neirong/shangpin/lg/15-5.jpg'),

(NULL,16,'img/shang_neirong/shangpin/sm/16-1.jpg','img/shang_neirong/shangpin/md/16-1.jpg','img/shang_neirong/shangpin/lg/16-1.jpg'),
(NULL,16,'img/shang_neirong/shangpin/sm/16-2.jpg','img/shang_neirong/shangpin/md/16-2.jpg','img/shang_neirong/shangpin/lg/16-2.jpg'),
(NULL,16,'img/shang_neirong/shangpin/sm/16-3.jpg','img/shang_neirong/shangpin/md/16-3.jpg','img/shang_neirong/shangpin/lg/16-3.jpg'),
(NULL,16,'img/shang_neirong/shangpin/sm/16-4.jpg','img/shang_neirong/shangpin/md/16-4.jpg','img/shang_neirong/shangpin/lg/16-4.jpg'),
(NULL,16,'img/shang_neirong/shangpin/sm/16-5.jpg','img/shang_neirong/shangpin/md/16-5.jpg','img/shang_neirong/shangpin/lg/16-5.jpg'),

(NULL,17,'img/shang_neirong/shangpin/sm/17-1.jpg','img/shang_neirong/shangpin/md/17-1.jpg','img/shang_neirong/shangpin/lg/17-1.jpg'),
(NULL,17,'img/shang_neirong/shangpin/sm/17-2.jpg','img/shang_neirong/shangpin/md/17-2.jpg','img/shang_neirong/shangpin/lg/17-2.jpg'),
(NULL,17,'img/shang_neirong/shangpin/sm/17-3.jpg','img/shang_neirong/shangpin/md/17-3.jpg','img/shang_neirong/shangpin/lg/17-3.jpg'),
(NULL,17,'img/shang_neirong/shangpin/sm/17-4.jpg','img/shang_neirong/shangpin/md/17-4.jpg','img/shang_neirong/shangpin/lg/17-4.jpg'),
(NULL,17,'img/shang_neirong/shangpin/sm/17-5.jpg','img/shang_neirong/shangpin/md/17-5.jpg','img/shang_neirong/shangpin/lg/17-5.jpg'),

(NULL,18,'img/shang_neirong/shangpin/sm/18-1.jpg','img/shang_neirong/shangpin/md/18-1.jpg','img/shang_neirong/shangpin/lg/18-1.jpg'),
(NULL,18,'img/shang_neirong/shangpin/sm/18-2.jpg','img/shang_neirong/shangpin/md/18-2.jpg','img/shang_neirong/shangpin/lg/18-2.jpg'),
(NULL,18,'img/shang_neirong/shangpin/sm/18-3.jpg','img/shang_neirong/shangpin/md/18-3.jpg','img/shang_neirong/shangpin/lg/18-3.jpg'),
(NULL,18,'img/shang_neirong/shangpin/sm/18-4.jpg','img/shang_neirong/shangpin/md/18-4.jpg','img/shang_neirong/shangpin/lg/18-4.jpg'),
(NULL,18,'img/shang_neirong/shangpin/sm/18-5.jpg','img/shang_neirong/shangpin/md/18-5.jpg','img/shang_neirong/shangpin/lg/18-5.jpg'),

(NULL,19,'img/shang_neirong/shangpin/sm/19-1.jpg','img/shang_neirong/shangpin/md/19-1.jpg','img/shang_neirong/shangpin/lg/19-1.jpg'),
(NULL,19,'img/shang_neirong/shangpin/sm/19-2.jpg','img/shang_neirong/shangpin/md/19-2.jpg','img/shang_neirong/shangpin/lg/19-2.jpg'),
(NULL,19,'img/shang_neirong/shangpin/sm/19-3.jpg','img/shang_neirong/shangpin/md/19-3.jpg','img/shang_neirong/shangpin/lg/19-3.jpg'),
(NULL,19,'img/shang_neirong/shangpin/sm/19-4.jpg','img/shang_neirong/shangpin/md/19-4.jpg','img/shang_neirong/shangpin/lg/19-4.jpg'),
(NULL,19,'img/shang_neirong/shangpin/sm/19-5.jpg','img/shang_neirong/shangpin/md/19-5.jpg','img/shang_neirong/shangpin/lg/19-5.jpg'),

(NULL,20,'img/shang_neirong/shangpin/sm/20-1.jpg','img/shang_neirong/shangpin/md/20-1.jpg','img/shang_neirong/shangpin/lg/20-1.jpg'),
(NULL,20,'img/shang_neirong/shangpin/sm/20-2.jpg','img/shang_neirong/shangpin/md/20-2.jpg','img/shang_neirong/shangpin/lg/20-2.jpg'),
(NULL,20,'img/shang_neirong/shangpin/sm/20-3.jpg','img/shang_neirong/shangpin/md/20-3.jpg','img/shang_neirong/shangpin/lg/20-3.jpg'),
(NULL,20,'img/shang_neirong/shangpin/sm/20-4.jpg','img/shang_neirong/shangpin/md/20-4.jpg','img/shang_neirong/shangpin/lg/20-4.jpg'),
(NULL,20,'img/shang_neirong/shangpin/sm/20-5.jpg','img/shang_neirong/shangpin/md/20-5.jpg','img/shang_neirong/shangpin/lg/20-5.jpg');


/**gouwuche 购物车列表**/
INSERT INTO gouwuche VALUES
(null,1,1,'红蜻蜓 连衣裙长袖2019春季新款粉色V领系带印花甜美中长款百搭淑女修身显瘦欧洲站雪纺性感连衣裙女装 图片色 M','红蜻蜓品牌官方旗舰店',259.00,'img/shang_neirong/shangpin/liebiao/1.jpg'),
(null,1,2,'红蜻蜓 连衣裙女长袖2019春夏新款九分袖A字裙中长款百搭淑女修身显瘦裙子欧洲站雪纺性感连衣裙女装 图片色 M','红蜻蜓品牌官方旗舰店',249.00,'img/shang_neirong/shangpin/liebiao/2.jpg'),
(null,1,3,'红蜻蜓 休闲裤女2019春夏季新款时尚韩版打底裤百搭九分裤女修身显瘦OL通勤职业高腰裤子女阔腿裤女装 黑色-后松紧腰 M','红蜻蜓品牌官方旗舰店',99.00,'img/shang_neirong/shangpin/liebiao/3.jpg'),
(null,1,4,'红蜻蜓 牛仔裤女2019春夏季新款学生中高腰弹力百搭毛边直筒九分喇叭裤女外穿微喇裤子修身显瘦阔腿裤女 蓝色八分裤 28','红蜻蜓品牌官方旗舰店',128.00,'img/shang_neirong/shangpin/liebiao/4.jpg');