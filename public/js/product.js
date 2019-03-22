window.onload=function(){
  ajax({
    url:"http://localhost:3000/product",
    type:"get",
    dataType:"json"
  }).then(res=>{
    var html=""; 
    for(var i=0;i<res.length;i++){
       html += `<div class="col-lg-3 col-md-6 col-sm-12">
      <!-- 列表具体内容-->
      <div class="card">
        <!-- 图片-->
        <a href="javascript:;">
          <img class="w-100"
               src="${res[i].img}" alt="" data-id='${res[i].lid}'/>
        </a>
        <!-- 具体内容-->
        <div class="card-body pt-0">
          <h5 class="price">${res[i].price}万元</h5>
          <p class="">
            <a href="javascript:;" class="text-muted">
              ${res[i].title}
            </a><br>
            <span>${res[i].subtitle}</span>
          </p>
          <!-- 按钮-->
          <div class="d-flex justify-content-between align-items-center">
            <a href="javascript:;" class="btn">加入购物车</a>
          </div>
        </div>
      </div>
    </div>`;
  }
// 取id
  var div=document.getElementById("shangping");
  div.innerHTML=html;
  })
  $('#shangping').on('click','img',function(e){
    var pid = e.target.dataset.id;
    location.href='http://127.0.0.1:3000/product_details.html?lid='+pid;
    console.log(location.href)
  })
}