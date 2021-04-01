window.addEventListener('load', function(){

  const confirmedList1 = document.getElementById("confirmed_list1")
  const pullDownParents = document.getElementById("pull_down")
  const confirmed1 = document.getElementById("confirmed1")


  confirmedList1.addEventListener('mouseover', function(){
    this.setAttribute("style", "color: red;")
  });

  confirmedList1.addEventListener('mouseout', function(){
    this.removeAttribute("style", "color: white;")
  });

  confirmedList1.addEventListener('click', function() {
    if (pullDownParents.getAttribute("style") == "display:block;") {  //プルダウンメニューの表示と非表示の設定
      pullDownParents.removeAttribute("style", "display:block;")  //表示されている時の実行
    } else {
      pullDownParents.setAttribute("style", "display:block;")  //非表示の時実行
    }
  });

  confirmed1.addEventListener('click', function() {
    confirmed1.textContent = '・確認済';
  });

});
