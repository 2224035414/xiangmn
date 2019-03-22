window.onload=function(){
  var lid=location.search.slice(5);
  ajax({
    url:"http://localhost:3000/details",
    type:"get",
    data:"lid="+lid,
    dataType:"json"
  })
  .then(res=>{
     console.log(res);
    var {product,pics}=res;
    var h6=document.querySelector("#details>h6:first-child");h6.innerHTML=product.title;
    h6.nextElementSibling.children[0].innerHTML=product.subtitle;
    var price = document.getElementById("price");
    price.innerHTML=product.price;


    var html="";
    for(var p of pics){
      var {sm,md}=p;
      html+=`<li class="float-left ml-3">
      <img src="${sm}" data-md="${md}" style="height: 78px">
      </li>`
    }
    $('#bigimg').attr('src',pics[0].md);
    $('#imgul').on('click','img',function(e){
      $('#bigimg').attr('src',e.target.dataset.md);
    })
    document.getElementById("imgul").innerHTML=html;
  })


  $('.my_nav').on('click','a',function(e){
    e.preventDefault();
    console.log(e.target.dataset.page)
    switch(e.target.dataset.page){
        case '1':location.href='http://127.0.0.1:3000/index.html';
                break;
        case '2':location.href='http://127.0.0.1:3000/product.html';
                break;
        case '3':location.href='http://127.0.0.1:3000/jingjie.html';
                break;
        case '4':location.href='http://127.0.0.1:3000/product.html';
                break;
        default:console.log('error');
                break;                                    
    }
    
  })
}
