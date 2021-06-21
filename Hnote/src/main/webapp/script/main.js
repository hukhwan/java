//todo 리스트
function openCurrAccordion() {
  var parent = document.querySelector(".preview .todoListH");
  var article = document.querySelector(".preview .todoList");

  if (!parent.classList.contains("open")) {
    parent.classList.add("open");
    article.style.display = "block";
  } else {
    parent.classList.remove("open");
    article.style.display = "none";
  }
}

function openCurrAccordion2() {
  var parent = document.querySelector(".preview .memoH");
  var article = document.querySelector(".preview .memo");

  if (!parent.classList.contains("open")) {
    parent.classList.add("open");
    article.style.display = "block";
  } else {
    parent.classList.remove("open");
    article.style.display = "none";
  }
}

//todo 리스트 CLEAR 전환
var clearly = document.querySelectorAll(".todoList .doList button");
for (var i = 0; i < clearly.length; i++) {
  clearly[i].addEventListener("click", changeCl);
}

function changeCl() {
  var nonClear = this.nextElementSibling;

  if (nonClear.className === "upanddown CLEAR") {
    alert("Already Done");
  } else {
    alert("do you want change Complete?");
    nonClear.className = "upanddown CLEAR";
  }
}

//memo 리스트
var memoListOpn = document.querySelectorAll(".memo .memoLi .memoLiContent");

for (var i = 0; i < memoListOpn.length; i++) {
  memoListOpn[i].addEventListener("click", openMemoAccordion);
}

function openMemoAccordion() {
  for (var i = 0; i < memoListOpn.length; i++) {
    var parent = memoListOpn[i].parentElement;
    var article = memoListOpn[i].nextElementSibling;
    var changeOn = document.querySelector(".memo .memoLi .memoLiContent em");

    if (this === memoListOpn[i] && !parent.classList.contains("oppen")) {
      parent.classList.add("oppen");
      article.style.maxHeight = article.scrollHeight + "px";
      changeOn.className = "fas fa-chevron-down";
    } else {
      parent.classList.remove("oppen");
      article.style.maxHeight = "0px";
      changeOn.className = "fas fa-chevron-up";
    }
  }
}

//로그인박스
var todoOpt = document.querySelectorAll(".modify .fa-ellipsis-v");

for (var i = 0; i < todoOpt.length; i++) {
  todoOpt[i].addEventListener("click", openlogin);
}

var loginBox = document.querySelectorAll(".logBox .fa-chevron-down");

for (var i = 0; i < loginBox.length; i++) {
  loginBox[i].addEventListener("click", openlogin);
}

function openlogin() {
  for (var i = 0; i < loginBox.length; i++) {
    var parent = loginBox[i].parentElement;
    var article = loginBox[i].nextElementSibling;

    if (this === loginBox[i] && !parent.classList.contains("open")) {
      parent.classList.add("open");
      article.style.maxHeight = article.scrollHeight + "px";
    } else {
      parent.classList.remove("open");
      article.style.maxHeight = "0px";
    }
  }
}

// function time() {
//   var time = new Date();
//   document.getElementById("now").innerHTML = time.getHours() + ":" + time.getMinutes();
//   setInterval("time()", 1000);
// }

function time() {
  var time = new Date();
  var hours = time.getHours();
  var minutes = time.getMinutes();
  var ampm = hours >= 12 ? "pm" : "am";
  hours = hours % 12;
  hours = hours ? hours : 12; // the hour '0' should be '12'
  minutes = minutes < 10 ? "0" + minutes : minutes;
  document.getElementById("now").innerHTML = hours + ":" + minutes + " " + ampm;
  setInterval("time()", 3000);
}

function time2() {
  var time2 = new Date();
  0000000000000;
  var year = time2.getFullYear();
  var month = time2.getMonth();
  var days = time2.getDate();
  month = month + 1;
  document.getElementById("now2").innerHTML = year + "-" + month + "-" + days;
  setInterval("time2()", 5000);
}

$(function () {
  $("#sortable").sortable();

  $("#sortable").disableSelection();
});

$(function () {
  $("#sortable2").sortable();

  $("#sortable2").disableSelection();
});

$(function () {
  $("#sortable3").sortable();

  $("#sortable3").disableSelection();
});

//todo 리스트
var headers = document.querySelectorAll(".subexp .todoList .todo .opnPop ");
for (let i = 0; i < headers.length; i++) {
  headers[i].addEventListener("click", penAccordion);
}

function penAccordion() {
  let parent = this.parentElement.parentElement;
  let article = this.parentElement.nextElementSibling;
  if (!parent.classList.contains("open")) {
    parent.classList.add("open");
    article.style.maxHeight = article.scrollHeight + "px";
  } else {
    parent.classList.remove("open");
    article.style.maxHeight = "0px";
  }
}

var makeNotice = document.querySelectorAll(".createTask .trigger");
for (let i = 0; i < makeNotice.length; i++) {
  makeNotice[i].addEventListener("click", openAccordion);
}

function openAccordion() {
  let parent = this.parentElement;
  let article = this.nextElementSibling;

  if (!parent.classList.contains("pen")) {
    parent.classList.add("pen");
    article.style.maxHeight = article.scrollHeight + "px";
  } else {
    parent.classList.remove("pen");
    article.style.maxHeight = "0px";
  }
}

var fas = document.querySelectorAll(".fa-ellipsis-v");
for (let i = 0; i < fas.length; i++) {
  fas[i].addEventListener("click", oopenAccordion);
}

function oopenAccordion() {
  let parent = this.parentElement;
  let article = this.nextElementSibling;

  if (!parent.classList.contains("oopen")) {
    parent.classList.add("oopen");
    article.style.maxHeight = article.scrollHeight + "px";
  } else {
    parent.classList.remove("oopen");
    article.style.maxHeight = "0px";
  }
}

//CheckBox 클릭시 체크값에 따라 DB반영
function YnCheck(obj) {
  var checked = obj.checked;
  if (checked) {
    obj.value = "true";
  } else {
    obj.value = "false";
  }
}

<<<<<<< HEAD
=======
//var checkYn = "${data.YnCheck}";
//if (checkYn == "Y") {
//  $("#task1").prop("checked", true);
//} else {
//  $("#task1").prop("checked", false);
//}

// var checkYn2 = "${data.YnCheck2}";
// if (checkYn2 == "Y") {
//   $("#modify").prop("checked", true);
// } else {
//   $("#modify").prop("checked", false);
// }

//label을 클릭시 해당input의 value = label classname

var createBtn1 = document.querySelector(".difficulty #dif_default");
createBtn1.addEventListener("click", updateBtn1only);

var createBtn2 = document.querySelector(".difficulty #dif_low");
createBtn2.addEventListener("click", updateBtn);

var createBtn3 = document.querySelector(".difficulty #dif_normal");
createBtn3.addEventListener("click", updateBtn);

var createBtn4 = document.querySelector(".difficulty #dif_high");
createBtn4.addEventListener("click", updateBtn);

var createBtn5 = document.querySelector(".difficulty #dif_clear");
createBtn5.addEventListener("click", updateBtn);

function updateBtn() {
  if (this.getAttribute("name") == "") {
    a();
    this.setAttribute("name", "dashDifficulty");
    this.style.border = "gray solid 3px";
  } else {
    this.setAttribute("name", "");
    this.style.border = "white solid 3px";
  }
}

function updateBtn1only() {
  if (this.getAttribute("name") == "") {
    a();
    this.setAttribute("name", "dashDifficulty");
    this.style.border = "gray solid 3px";
  } else {
    this.setAttribute("name", "");
    this.style.border = "#c7c7c7 solid 3px";
  }
}

function a() {
  createBtn1.setAttribute("name", "");
  createBtn1.style.border = "#c7c7c7 solid 3px";
  createBtn2.setAttribute("name", "");
  createBtn2.style.border = "white solid 3px";
  createBtn3.setAttribute("name", "");
  createBtn3.style.border = "white solid 3px";
  createBtn4.setAttribute("name", "");
  createBtn4.style.border = "white solid 3px";
  createBtn5.setAttribute("name", "");
  createBtn5.style.border = "white solid 3px";
}

>>>>>>> 9f9b9ed9258dd833e6cdb3637acaf822a311a1ba
//카테고리설정
var createCate1 = document.querySelector(".categori #works");
createCate1.addEventListener("click", updateCate);

var createCate2 = document.querySelector(".categori #study");
createCate2.addEventListener("click", updateCate);

var createCate3 = document.querySelector(".categori #private");
createCate3.addEventListener("click", updateCate);

function updateCate() {
  if (this.getAttribute("name") == "") {
    a();
    this.setAttribute("name", "categori");
    this.style.border = "gray solid 3px";
  } else {
    this.setAttribute("name", "");
    this.style.border = "white solid 3px";
  }
}

function a() {
  createCate1.setAttribute("name", "");
  createCate1.style.border = "#c7c7c7 solid 3px";
  createCate2.setAttribute("name", "");
  createCate2.style.border = "white solid 3px";
  createCate3.setAttribute("name", "");
  createCate3.style.border = "white solid 3px";
}
