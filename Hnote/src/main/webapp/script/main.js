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
