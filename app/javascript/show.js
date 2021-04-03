window.addEventListener('load', function(){

  //以下webの方の確認・確認者リストボタン
  const webConfirmedList = document.getElementById("web_confirmed_list")
  const webPullDownParents = document.getElementById("web_pull_down")
  const webConfirmed = document.getElementById("web_confirmed")

  webConfirmedList.addEventListener('mouseover', function(){
    this.setAttribute("style", "color: red;")
  });
  webConfirmedList.addEventListener('mouseout', function(){
    this.removeAttribute("style", "color: white;")
  });
  webConfirmedList.addEventListener('click', function() {
    if (webPullDownParents.getAttribute("style") == "display:block;") {  //プルダウンメニューの表示と非表示の設定
      webPullDownParents.removeAttribute("style", "display:block;")  //表示されている時の実行
    } else {
      webPullDownParents.setAttribute("style", "display:block;")  //非表示の時実行
    }
  });

  webConfirmed.addEventListener('click', function() {
    this.textContent = '・確認済';
  });
  webConfirmed.addEventListener('mouseover', function() {
    this.setAttribute("style", "color: red;")
  });
  webConfirmed.addEventListener('mouseout', function(){
    this.removeAttribute("style", "color: white;")
  });



  //以下実際の方の確認・確認者リストボタン
  const localConfirmedList = document.getElementById("local_confirmed_list")
  const localPullDownParents = document.getElementById("local_pull_down")
  const localConfirmed = document.getElementById("local_confirmed")
  
  localConfirmedList.addEventListener('mouseover', function(){
    this.setAttribute("style", "color: red;")
   });
   localConfirmedList.addEventListener('mouseout', function(){
     this.removeAttribute("style", "color: white;")
   });
   localConfirmedList.addEventListener('click', function() {
    if (localPullDownParents.getAttribute("style") == "display:block;") {  //プルダウンメニューの表示と非表示の設定
      localPullDownParents.removeAttribute("style", "display:block;")  //表示されている時の実行
    } else {
      localPullDownParents.setAttribute("style", "display:block;")  //非表示の時実行
    }
   });

   localConfirmed.addEventListener('click', function() {
    this.textContent = '・確認済';
   });
   localConfirmed.addEventListener('mouseover', function() {
    this.setAttribute("style", "color: red;")
   });
   localConfirmed.addEventListener('mouseout', function(){
    this.removeAttribute("style", "color: white;")
   });

});
