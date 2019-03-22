window.onload=function(){
  ajax({
    url:"http://localhost:3000/index",
    type:"get",
    dataType:"json"
  }).then(res=>{
    console.log(res);
    var p=res[0];
    var pp=res[1];
    var ppp=res[2];
    var pppp=res[3];
    var {img,href}=p;
    var html=`<div class="carousel-inner">
    <div class="carousel-item active">
        <a href="${href}"><img src="${img}"/></a>
    </div>
    <div class="carousel-item">
        <a href="${pp.href}"><img src="${pp.img}"/></a>
    </div>
    <div class="carousel-item">
        <a href="${ppp.href}"><img src="${ppp.img}"/></a>
    </div>
    <div class="carousel-item">
        <a href="${pppp.href}"><img src="${pppp.img}"/></a>
    </div>
</div>`;
var div=document.querySelector(".container-fluid>#lunbo>.col-lg-12>#demo>.carousel-inner");
div.innerHTML=html;
  })

  ajax({
    url:"http://localhost:3000/index1",
    type:"get",
    dataType:"json"
  }).then(res=>{
   console.log(res);
    var a=res[0];
    var b=res[1];
    var c=res[2];
    var d=res[3];
    var e=res[4];
    var f=res[5];
    var html=`<div class="row w-100 carzhanshi_tupian m-0" id="shangping">
    <div class="col-lg-2"><a  href="${a.href}"><img src="${a.pic}" alt=""></a></div>
    <div class="col-lg-2"><a  href="${b.href}"><img src="${b.pic}" alt=""></a></div>
    <div class="col-lg-2"><a  href="${c.href}"><img src="${c.pic}" alt=""></a></div>
    <div class="col-lg-2"><a  href="${d.href}"><img src="${d.pic}" alt=""></a></div>
    <div class="col-lg-2"><a  href="${e.href}"><img src="${e.pic}" alt=""></a></div>
    <div class="col-lg-2"><a  href="${f.href}"><img src="${f.pic}" alt=""></a></div>
</div>`;
var div1=document.querySelector(".container-fluid>#sp>#shangp>#shangping");
div1.innerHTML=html;
  })


} 

$('.my_nav').on('click','a',function(e){
    e.preventDefault();
    console.log(e.target.dataset.page)
    switch(e.target.dataset.page){
        case '1':location.href='http://127.0.0.1:3000/product.html';
                break;
        case '2':location.href='http://127.0.0.1:3000/jeepLife.html';
                break;
        case '3':location.href='http://127.0.0.1:3000/product.html';
                break;
        case '4':location.href='http://127.0.0.1:3000/jingjie.html';
                break;
        case '5':location.href='http://127.0.0.1:3000/jeepLife.html';
                break;
        case '6':location.href='http://127.0.0.1:3000/jingxiaoshang.html';
                break;
        case '7':location.href='http://127.0.0.1:3000/product.html';
                break;
        default:console.log('error');
                break;                                        
    }
    
})