const express=require('express');
const router=express.Router();
const pool=require("../pool");


router.get("/",(req,res)=>{
  var lid=req.query.lid;
  var output={
    product:{},
    pics:[]
  };
  var sql = "SELECT * from jeep_laptop";
  pool.query(sql,[lid],(err,result)=>{
    if(err)throw err;
    
      res.send(result);
    }); 
  });
  
  module.exports=router;




