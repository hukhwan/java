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

//label을 클릭시 해당input의 value = label classname

var createBtn1 = document.querySelector(".difficulty #dif_default");
createBtn1.addEventListener("click", updateBtn);

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

function a() {
  createBtn1.setAttribute("name", "");
  createBtn1.style.border = "white solid 3px";
  createBtn2.setAttribute("name", "");
  createBtn2.style.border = "white solid 3px";
  createBtn3.setAttribute("name", "");
  createBtn3.style.border = "white solid 3px";
  createBtn4.setAttribute("name", "");
  createBtn4.style.border = "white solid 3px";
  createBtn5.setAttribute("name", "");
  createBtn5.style.border = "white solid 3px";
}
