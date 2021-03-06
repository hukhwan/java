<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="./css/cssReset.css" />
    <link rel="stylesheet" href="./css/todoList.css" />
    <link rel="stylesheet" href="./test.css" />
    <link rel="stylesheet" href="./css/todoopn.css" />
    <script src="./script/main.js" defer></script>
    <script src="https://kit.fontawesome.com/f968a989c6.js" crossorigin="anonymous"></script>
    <link rel="head icon" href="./source/hotjar-brands.svg" type="png icon" />
    <title>H1note-TodoList</title>
  </head>
  <body class="flexRo canvas" onload="time(),time2()">
    <header>
      <nav>
        <h1>
          <a href="./main.jsp">
            <i class="fas fa-cat"></i>
            <em class="blind">Hnote</em>
          </a>
        </h1>
        <div>
          <a href="./main.jsp" class="navList">
            <i class="fas fa-home">
              <em class="blind">home</em>
            </i>
          </a>
          <a href="./todoList.jsp" class="active">
            <i class="fas fa-list-alt">
              <em class="blind">todo list</em>
            </i>
          </a>
          <a href="#" class="navList">
            <i class="fas fa-memory">
              <em class="blind">memo</em>
            </i>
          </a>
          <a href="#" class="navList">
            <i class="fas fa-code">
              <em class="blind">study</em>
            </i>
          </a>
          <a href="#" class="navList">
            <i class="fas fa-calendar">
              <em class="blind">calendar</em>
            </i>
          </a>
          <a href="#" class="navList"
            ><i class="fas fa-chart-pie">
              <em class="blind">chart</em>
            </i>
          </a>
        </div>

        <a href="#">
          <i class="fas fas fa-cogs">
            <em class="blind">option</em>
          </i>
        </a>
      </nav>
    </header>

    <section class="home flexRo">
      <div class="homedata">
        <div class="preview">
          <ol class="flexRo">
            <li class="todoListH open" onclick="openCurrAccordion();">Todo List</li>
            <li>
              <form class="createTask" action="" method="">
                <h3 class="trigger">Create Todo List</h3>

                <div class="maker">
                  <div class="makeNotice">
                    <h4>Choose Categori</h4>
                    <div class="categori">
                      <input type="text" readonly id="works" name="" value="Works" class="upanddown4 works" />
                      <input type="text" readonly id="study" name="" value="Study" class="upanddown4 study" />
                      <input type="text" readonly id="private" name="" value="Private" class="upanddown4 private" />
                    </div>

                    <h4>Create new task</h4>
                    <label for="work"></label>
                    <input type="text" id="work" name="work" placeholder="Please enter a title" autocomplete="off" />

                    <h4>Choose difficulty</h4>
                    <div class="difficulty">
                      <input type="text" readonly id="dif_default" name="" value="DEFAULT" class="upanddown2 DEFAULT" />

                      <input type="text" readonly id="dif_low" name="" value="LOW" class="upanddown2 LOW" />

                      <input type="text" readonly id="dif_normal" name="" value="NORMAL" class="upanddown2 NORMAL" />

                      <input type="text" readonly id="dif_high" name="" value="HIGH" class="upanddown2 HIGH" />

                      <input type="text" readonly id="dif_clear" name="" value="CLEAR" class="upanddown2 CLEAR" />
                    </div>
                    <h4>Dead Line</h4>

                    <label for="deadLine"></label>
                    <input type="date" id="deadLine" name="deadLine" value="2021-06-10" />
                    <label for="hours"></label>
                    <input type="text" placeholder="deadline hours 18" id="hours" name="hours" autocomplete="off" />
                    <button type="submit">Submit</button>
                  </div>
                </div>
              </form>
            </li>
          </ol>

          <!-- TodoList?????????????????? -->
          <ul class="todoList" id="sortable">
            <li class="doList li1">
              <i class="far fa-grip-lines"></i>
              <p class="fas fa-briefcase"></p>
              <!-- <p class="fas fa-briefcase"></p> -->
              <!-- <p class="fas fa-user"></p>
                    <p class="fas fa-book"></p> -->
              <div class="liH">
                <h2>Learn Figma</h2>
                <p>by Christopher Morgan</p>
              </div>
              <p class="time">
                <em>~ 21-06-17 18:00</em>
              </p>
              <button>
                <i class="fas fa-check"></i>
              </button>
              <strong class="upanddown CLEAR"></strong>
              <div class="modify">
                <strong class="fas fa-ellipsis-v"></strong>
                <div class="log">
                  <a href=""><p>Modify</p></a>
                  <a href=""><p>Delete</p></a>
                </div>
              </div>
            </li>

            <li class="doList li1">
              <i class="far fa-grip-lines"></i>
              <p class="fas fa-book"></p>
              <!-- <p class="fas fa-briefcase"></p> -->
              <!-- <p class="fas fa-user"></p>
                    <p class="fas fa-book"></p> -->
              <div class="liH">
                <h2>Learn Figma</h2>
                <p>by Christopher Morgan</p>
              </div>
              <p class="time">
                <em>~ 21-06-17 18:00</em>
              </p>
              <button>
                <i class="fas fa-check"></i>
              </button>
              <strong class="upanddown DEFAULT"></strong>
              <div class="modify">
                <strong class="fas fa-ellipsis-v"></strong>
                <div class="log">
                  <a href=""><p>Modify</p></a>
                  <a href=""><p>Delete</p></a>
                </div>
              </div>
            </li>

            <li class="doList li1">
              <i class="far fa-grip-lines"></i>
              <p class="fas fa-user"></p>
              <!-- <p class="fas fa-briefcase"></p> -->
              <!-- <p class="fas fa-user"></p>
                    <p class="fas fa-book"></p> -->
              <div class="liH">
                <h2>Learn Figma</h2>
                <p>by Christopher Morgan</p>
              </div>
              <p class="time">
                <em>~ 21-06-17 18:00</em>
              </p>
              <button>
                <i class="fas fa-check"></i>
              </button>
              <strong class="upanddown HIGH"></strong>
              <div class="modify">
                <strong class="fas fa-ellipsis-v"></strong>
                <div class="log">
                  <a href=""><p>Modify</p></a>
                  <a href=""><p>Delete</p></a>
                </div>
              </div>
            </li>

            <li class="doList li1">
              <i class="far fa-grip-lines"></i>
              <p class="fas fa-book"></p>
              <!-- <p class="fas fa-briefcase"></p> -->
              <!-- <p class="fas fa-user"></p>
                    <p class="fas fa-book"></p> -->
              <div class="liH">
                <h2>Learn Figma</h2>
                <p>by Christopher Morgan</p>
              </div>
              <p class="time">
                <em>~ 21-06-17 18:00</em>
              </p>
              <button>
                <i class="fas fa-check"></i>
              </button>
              <strong class="upanddown NORMAL"></strong>
              <div class="modify">
                <strong class="fas fa-ellipsis-v"></strong>
                <div class="log">
                  <a href=""><p>Modify</p></a>
                  <a href=""><p>Delete</p></a>
                </div>
              </div>
            </li>

            <li class="doList li1">
              <i class="far fa-grip-lines"></i>
              <p class="fas fa-user"></p>
              <!-- <p class="fas fa-briefcase"></p> -->
              <!-- <p class="fas fa-user"></p>
                    <p class="fas fa-book"></p> -->
              <div class="liH">
                <h2>Learn Figma</h2>
                <p>by Christopher Morgan</p>
              </div>
              <p class="time">
                <em>~ 21-06-17 18:00</em>
              </p>
              <button>
                <i class="fas fa-check"></i>
              </button>
              <strong class="upanddown LOW"></strong>
              <div class="modify">
                <strong class="fas fa-ellipsis-v"></strong>
                <div class="log">
                  <a href=""><p>Modify</p></a>
                  <a href=""><p>Delete</p></a>
                </div>
              </div>
            </li>
          </ul>
        </div>
      </div>
      <div class="homeData2">
        <div class="logAndSearch">
          <form action="" method="GET">
            <div class="searchBox">
              <label for="bigCategori"></label>
              <select name="bigCategori" id="bigCategori">
                <option value="todoList">TodoList</option>
              </select>
              <label for="q"></label>
              <input type="search" name="q" id="q" placeholder="input search" autocomplete="off" />
              <button type="submit" class="fas fa-search submit"></button>
            </div>
          </form>
          <i class="far fa-bell"></i>
          <i class="fas fa-user-alt"></i>
          <div class="logBox">
            <i class="fas fa-chevron-down"></i>
            <!-- ?????????????????? ?????? -->
            <div class="log">
              <a href=""><p>Log In</p></a>
              <a href=""><p>Join</p></a>
            </div>

            <!-- ???????????????????????? -->
            <div class="none log">
              <a href=""><p>Log Out</p></a>
              <a href=""><p class="fas fa-cogs">option</p></a>
            </div>
          </div>
        </div>

        <ul class="timeStamp" id="sortable2">
          <!-- ????????????/???????????? -->
          <li>
            <article class="myCalendar">
              <h5 id="now2"></h5>
              <div>
                <p id="now"></p>
              </div>
            </article>
          </li>

          <!-- write -->
          <li>
            <article>
              <h5>Number Of<br />Accumulate Todo!</h5>
              <div class="myWrite">
                <p><em>5</em></p>
              </div>
            </article>
          </li>
        </ul>

        <div>
          <h3 style="margin-top: 70px">Todo List Details</h3>
          <ol class="detailBox" id="sortable3">
            <li class="todoDetail">
              <h5>today all todo</h5>
              <p>5</p>
            </li>
            <li class="todoDetail">
              <h5>Clear</h5>
              <p>1</p>
            </li>
            <li class="todoDetail">
              <h5>Incomplete</h5>
              <p>4</p>
            </li>
          </ol>

          <h5>tems by difficulty</h5>
          <div class="difBtn">
            <strong class="upanddown3 DEFAULT"> : <em>1</em></strong>
            <strong class="upanddown3 LOW"> : <em>1</em></strong>
            <strong class="upanddown3 NORMAL"> : <em>1</em></strong>
            <strong class="upanddown3 HIGH"> : <em>1</em></strong>
          </div>
        </div>
      </div>
    </section>

    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" defer></script>
    <script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js" defer></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
  </body>
</html>
