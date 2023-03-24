$(document).ready(function () {
  // MenuBarをクリックした場合の処理
  $("#MenuBar").click(function () {
    // MenuListを表示
    $("#MenuList").removeClass("hidden");
  });

  // MenuCloseをクリックした場合の処理
  $("#MenuClose").click(function () {
    // MenuListを非表示
    $("#MenuList").addClass("hidden");
  });
});
