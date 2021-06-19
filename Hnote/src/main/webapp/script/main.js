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
