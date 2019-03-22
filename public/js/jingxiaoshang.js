window.onload=function(){
  ajax({
    url:"http://localhost:3000/jingxiaoshang",
    type:"get",
    dataType:"json"
  }).then(res=>{
    // console.log(res);
    var html = "";
    for(var i=0;i<res.length;i++){
      html += `<div class="col-12 d-flex mt-3">
      <div style="width: 315px; height: 225px;">
        <img src="${res[i].img}" alt="" style="width:90%">
      </div>
      <!-- 内容文字 -->
      <div class="m-3" id="neirong_center">
        <h5 class="ml-5">${res[i].title}</h5>
        <span><img src="images/jingxiaoshang/Mapicon.png">&nbsp;${res[i].dizhi}</span><br>
        <span><img src="images/jingxiaoshang/callin.png">&nbsp;${res[i].phone}</span>
        <div class="text-center">
          <span>${res[i].neirong1}</span><br>
          <span>${res[i].neirong2}</span><br>
          <span>${res[i].neirong3}</span>
        </div>
      </div>
      <div class="m-3" id="nanniu">
        <button class="btn btn-dark">在线洽谈</button><br>
        <button class="btn btn-dark mt-3">预约试驾</button><br>
        <button class="btn btn-dark mt-3">厂商特惠</button><br>
      </div>
    </div>`;
    }
    var div=document.getElementById("neirongr");
  div.innerHTML=html;
  console.log(this.div);
  })
} 
$('.my_nav').on('click','a',function(e){
  e.preventDefault();
  console.log(e.target.dataset.page)
  switch(e.target.dataset.page){
      case '1':location.href='http://127.0.0.1:3000/index.html';
              break;
      case '2':location.href='http://127.0.0.1:3000/jeepLife.html';
              break;
      case '3':location.href='http://127.0.0.1:3000/jingjie.html';
              break;
      case '4':location.href='http://127.0.0.1:3000/product.html';
              break;
      default:console.log('error');
              break;                                    
  }
  
})