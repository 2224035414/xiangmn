//使用express构建web服务器 --11:25
const express = require('express');
const bodyParser = require('body-parser');
const cors=require("cors");
/*引入路由模块*/
const index=require("./routes/index");
const index1=require("./routes/index1");
const jeepLife=require("./routes/jeepLife");
const details=require("./routes/details");
const product=require("./routes/product");
const jingxiaoshang=require("./routes/jingxiaoshang");
var app = express();
var server = app.listen(3000);
//使用body-parser中间件
app.use(cors({
  origin:"*",
  credentials:true //要求客户端必须携带cookie
}))
app.use(bodyParser.urlencoded({extended:false}));
//托管静态资源到public目录下
app.use(express.static('public'));
/*使用路由器来管理路由*/
//http://localhost:3000/index -> index
app.use("/index",index);
app.use("/index1",index1);
app.use("/details",details);
app.use("/jeepLife",jeepLife)
app.use("/product",product);
app.use("/jingxiaoshang",jingxiaoshang);