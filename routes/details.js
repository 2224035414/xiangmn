const express=require('express');
const router=express.Router();
const pool=require("../pool");


router.get("/",(req,res)=>{
  var lid=req.query.lid;
  var output={
    product:{},
    pics:[]
  };
  var sql = "SELECT * from jeep_laptop where lid=?";
  pool.query(sql,[lid],(err,result)=>{
    if(err)throw err;
    output.product=result[0];
      var sql="SELECT * FROM jeep_car_pic where car_id=?"
    pool.query(sql,[lid],(err,result)=>{
      if(err)throw err;
      output.pics=result; 
      res.send(output);
    }); 
  });
  
});




module.exports=router;