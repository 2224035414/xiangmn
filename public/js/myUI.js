jQuery.fn.accordion=function(){
  //this->插件的父元素
  var $parent=this;
  //1. 侵入class和自定义属性
  $parent.addClass("accordion")//div.accordion
        .children(":even").addClass("title")
        //div.title*3
        .next().addClass("content fade")
        .first().addClass("in")//div.content*3
        //div.content中第1个
  //在页面上引入myUI/.css和.js
  //在页面上调用$("#my-accordion").accordion()
  //2. 绑定事件
  $parent.on("click",".title",e=>
    $(e.target).next(".content")
      .toggleClass("in")
      .siblings(".content").removeClass("in")
  );
}
jQuery.fn.tabs=function(){
  var $parent=this; //div
  //1. 侵入
  $parent.children(":first-child")//ul
        .addClass(".tabs")//ul
        .find("li>a")
        .attr("data-toggle","tab")//a*3
        .parent()//li*3
        .first().addClass("active")//第一个li
  $parent.children(":last-child")//容器div
        .addClass("container")
        .children(":first-child")
        .addClass("active")
  //2. 绑定: 拷贝自myBoot.js
  $parent.children(":first-child")
  .on("click","[data-toggle=tab]",e=>{
    e.preventDefault();
    var $tar=$(e.target);
    if(!$tar.parent().is(".active")){
      $tar.parent().addClass("active")
        .siblings().removeClass("active");
      var id=$tar.attr("href");
      $(id).addClass("active")
        .siblings().removeClass("active");
    }
  })
}