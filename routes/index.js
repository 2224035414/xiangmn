const express=require('express');
const router=express.Router();
const pool=require("../pool");

router.get("/",(req,res)=>{
  var sql="  SELECT * FROM jeep_index_carousel WHERE cid!=5 ORDER BY cid";
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    res.send(result);
  });
})



module.exports=router;




// 
// SELECT * FROM jeep_index_carousel WHERE cid!=5 ORDER BY cid