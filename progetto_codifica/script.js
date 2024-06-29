$(document).ready(function () {
  $("#b_name").click(function () {
    $("name[type='luogo']").toggleClass("highlight-name");
  });

  $("#b_country").click(function () {
    $("country").toggleClass("highlight-country");
  });

  $("#b_date").click(function () {
    $("date").toggleClass("highlight-date");
  });

  $("#b_persName").click(function () {
    $("persName").toggleClass("highlight-persName");
  });

  $("#b_roleName").click(function () {
    $("roleName").toggleClass("highlight-roleName");
  });

  $("#b_orgName").click(function () {
    $("orgName").toggleClass("highlight-orgName");
  });
  $("#b_num").click(function () {
    $("num").toggleClass("highlight-num");
  });

  $("#b_hide").click(function () {
    $("name").removeClass("highlight-name");
    $("country").removeClass("highlight-country");
    $("date").removeClass("highlight-date");
    $("persName").removeClass("highlight-persName");
    $("roleName").removeClass("highlight-roleName");
    $("orgName").removeClass("highlight-orgName");
    $("num").removeClass("highlight-num");
  });
});

