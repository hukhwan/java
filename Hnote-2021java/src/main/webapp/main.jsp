<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="./css/cssReset.css" />
    <link rel="stylesheet" href="./css/main.css" />
    <link rel="stylesheet" href="./test.css" />
    <script src="./script/main.js" defer></script>
    <script src="https://kit.fontawesome.com/f968a989c6.js" crossorigin="anonymous"></script>
    <link rel="head icon" href="./source/hotjar-brands.svg" type="png icon" />
    <title>H1note-main</title>
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
          <a href="./main.jsp" class="active">
            <i class="fas fa-home">
              <em class="blind">Home</em>
            </i>
          </a>
          <a href="./todoList.jsp" class="navList">
            <i class="fas fa-list-alt">
              <em class="blind">Todo list</em>
            </i>
          </a>
          <a href="#" class="navList">
            <i class="fas fa-memory">
              <em class="blind">Memo</em>
            </i>
          </a>
          <a href="#" class="navList">
            <i class="fas fa-code">
              <em class="blind">Study</em>
            </i>
          </a>
          <a href="#" class="navList">
            <i class="fas fa-calendar">
              <em class="blind">Calendar</em>
            </i>
          </a>
          <a href="#" class="navList"
            ><i class="fas fa-chart-pie">
              <em class="blind">Chart</em>
            </i>
          </a>
        </div>

        <a href="#">
          <i class="fas fas fa-cogs">
            <em class="blind">Option</em>
          </i>
        </a>
      </nav>
    </header>

    <section class="home flexRo">
      <!-- 날씨 기상청api 필요 -->
      <div class="homeData1">
        <form class="helloWorld flexRo" method="GET" action="weatherAction.jsp">
          <div>
            <h2>Hello <em class="userID">UserID</em>!</h2>
            <p class="weatherComment">It’s good to see you again.</p>
          </div>
          <div class="boxPosition">
            <div class="localBox underLine">
              <label for="weather">local</label>
              <select name="weather" id="weather">
                <option value="seoul">Seoul</option>
                <option value="Incheon">Incheon</option>
                <option value="Daejeon">Daejeon</option>
              </select>
              <div class="selection">
                <i class="fas fa-chevron-down"></i>
                <i class="fas fa-plus">
                  <div class="plusNewLocal">
                    <label for="localWh"></label>
                    <input type="text" name="localWh" id="localWh" placeholder="input weather" autocomplete="off" />
                    <button type="submit">Submit</button>
                  </div>
                </i>
              </div>
            </div>
          </div>
        </form>

        <!-- 배너 -->
        <div class="banner flexRo">
          <ul>
            <li class="bn1">
              <a href="#" class="bn">
                <h2>Banner<br />Preparing</h2>
                <!-- <p class="fas fa-briefcase"></p>
                <p class="fas fa-user-shield"></p>
                <p class="fas fa-book"></p>
                <div class="bnH">
                  <h2>Learn Figma</h2>
                  <p>by Christopher Morgan</p>
                </div>
                <div>
                  <div>87%</div>
                  <em>21-06-17</em>
                  <em>18:00</em>
                </div>
                <strong class="upanddown CLEAR">Clear</strong>
                <button>Complete</button> -->
              </a>
            </li>
          </ul>
          <i class="far fa-arrow-alt-circle-left"></i>
          <i class="far fa-arrow-alt-circle-right"></i>
        </div>

        <!-- 프리뷰 -->
        <div class="preview">
          <h2>Preview</h2>
          <ol class="flexRo">
            <li class="todoListH open" onclick="openCurrAccordion();">Todo List</li>
            <li class="memoH" onclick="openCurrAccordion2();">Memo</li>
            <li>Calendar</li>
          </ol>

          <!-- TodoList클릭시 -->
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
            </li>
          </ul>

          <!-- 메모 클릭시 -->
          <ul class="memo">
            <li class="memoLi">
              <div class="memoLiContent">
                <i class="far fa-grip-lines"></i>
                <p class="fas fa-briefcase"></p>
                <!-- <p class="fas fa-user"></p>
                <p class="fas fa-book"></p> -->
                <h2>Title</h2>
                <strong>time</strong>
                <em class="fas fa-chevron-down"></em>
                <!-- <i class="fas fa-chevron-up"></i> -->
              </div>
              <div class="memoExplain">
                Lorem ipsum dolor sit, amet consectetur adipisicing elit. Praesentium perferendis quo autem officiis,
                nesciunt quasi cum non necessitatibus! Tempore commodi maiores inventore delectus earum voluptatibus
                veritatis sapiente, quidem, eligendi quam eius aperiam? Nemo molestiae eveniet natus totam, doloribus
                minima asperiores dolorum est recusandae eum, ipsum laboriosam ducimus. Magnam, optio iusto?Lorem ipsum
                dolor sit, amet consectetur adipisicing elit. Praesentium perferendis quo autem officiis, nesciunt quasi
                cum non necessitatibus! Tempore commodi maiores inventore delectus earum voluptatibus veritatis
                sapiente, quidem, eligendi quam eius aperiam? Nemo molestiae eveniet natus totam, doloribus minima
                asperiores dolorum est recusandae eum, ipsum laboriosam ducimus. Magnam, optio iusto?Lorem ipsum dolor
                sit, amet consectetur adipisicing elit. Praesentium perferendis quo autem officiis, nesciunt quasi cum
                non necessitatibus! Tempore commodi maiores inventore delectus earum voluptatibus veritatis sapiente,
                quidem, eligendi quam eius aperiam? Nemo molestiae eveniet natus totam, doloribus minima asperiores
                dolorum est recusandae eum, ipsum laboriosam ducimus. Magnam, optio iusto?Lorem ipsum dolor sit, amet
                consectetur adipisicing elit. Praesentium perferendis quo autem officiis, nesciunt quasi cum non
                necessitatibus! Tempore commodi maiores inventore delectus earum voluptatibus veritatis sapiente,
                quidem, eligendi quam eius aperiam? Nemo molestiae eveniet natus totam, doloribus minima asperiores
                dolorum est recusandae eum, ipsum laboriosam ducimus. Magnam, optio iusto?Lorem ipsum dolor sit, amet
                consectetur adipisicing elit. Praesentium perferendis quo autem officiis, nesciunt quasi cum non
                necessitatibus! Tempore commodi maiores inventore delectus earum voluptatibus veritatis sapiente,
                quidem, eligendi quam eius aperiam? Nemo molestiae eveniet natus totam, doloribus minima asperiores
                dolorum est recusandae eum, ipsum laboriosam ducimus. Magnam, optio iusto?
              </div>
            </li>

            <li class="memoLi">
              <div class="memoLiContent">
                <i class="far fa-grip-lines"></i>
                <p class="fas fa-book"></p>
                <!-- <p class="fas fa-user"></p>
                <p class="fas fa-book"></p> -->
                <h2>Title</h2>
                <strong>time</strong>
                <em class="fas fa-chevron-down"></em>
                <!-- <i class="fas fa-chevron-up"></i> -->
              </div>
              <div class="memoExplain">
                Lorem ipsum dolor sit, amet consectetur adipisicing elit. Praesentium perferendis quo autem officiis,
                nesciunt quasi cum non necessitatibus! Tempore commodi maiores inventore delectus earum voluptatibus
                veritatis sapiente, quidem, eligendi quam eius aperiam? Nemo molestiae eveniet natus totam, doloribus
                minima asperiores dolorum est recusandae eum, ipsum laboriosam ducimus. Magnam, optio iusto?Lorem ipsum
                dolor sit, amet consectetur adipisicing elit. Praesentium perferendis quo autem officiis, nesciunt quasi
                cum non necessitatibus! Tempore commodi maiores inventore delectus earum voluptatibus veritatis
                sapiente, quidem, eligendi quam eius aperiam? Nemo molestiae eveniet natus totam, doloribus minima
                asperiores dolorum est recusandae eum, ipsum laboriosam ducimus. Magnam, optio iusto?Lorem ipsum dolor
                sit, amet consectetur adipisicing elit. Praesentium perferendis quo autem officiis, nesciunt quasi cum
                non necessitatibus! Tempore commodi maiores inventore delectus earum voluptatibus veritatis sapiente,
                quidem, eligendi quam eius aperiam? Nemo molestiae eveniet natus totam, doloribus minima asperiores
                dolorum est recusandae eum, ipsum laboriosam ducimus. Magnam, optio iusto?Lorem ipsum dolor sit, amet
                consectetur adipisicing elit. Praesentium perferendis quo autem officiis, nesciunt quasi cum non
                necessitatibus! Tempore commodi maiores inventore delectus earum voluptatibus veritatis sapiente,
                quidem, eligendi quam eius aperiam? Nemo molestiae eveniet natus totam, doloribus minima asperiores
                dolorum est recusandae eum, ipsum laboriosam ducimus. Magnam, optio iusto?Lorem ipsum dolor sit, amet
                consectetur adipisicing elit. Praesentium perferendis quo autem officiis, nesciunt quasi cum non
                necessitatibus! Tempore commodi maiores inventore delectus earum voluptatibus veritatis sapiente,
                quidem, eligendi quam eius aperiam? Nemo molestiae eveniet natus totam, doloribus minima asperiores
                dolorum est recusandae eum, ipsum laboriosam ducimus. Magnam, optio iusto?
              </div>
            </li>

            <li class="memoLi">
              <div class="memoLiContent">
                <i class="far fa-grip-lines"></i>
                <p class="fas fa-user"></p>
                <!-- <p class="fas fa-user"></p>
                <p class="fas fa-book"></p> -->
                <h2>Title</h2>
                <strong>time</strong>
                <em class="fas fa-chevron-down"></em>
                <!-- <i class="fas fa-chevron-up"></i> -->
              </div>
              <div class="memoExplain">
                Lorem ipsum dolor sit, amet consectetur adipisicing elit. Praesentium perferendis quo autem officiis,
                nesciunt quasi cum non necessitatibus! Tempore commodi maiores inventore delectus earum voluptatibus
                veritatis sapiente, quidem, eligendi quam eius aperiam? Nemo molestiae eveniet natus totam, doloribus
                minima asperiores dolorum est recusandae eum, ipsum laboriosam ducimus. Magnam, optio iusto?Lorem ipsum
                dolor sit, amet consectetur adipisicing elit. Praesentium perferendis quo autem officiis, nesciunt quasi
                cum non necessitatibus! Tempore commodi maiores inventore delectus earum voluptatibus veritatis
                sapiente, quidem, eligendi quam eius aperiam? Nemo molestiae eveniet natus totam, doloribus minima
                asperiores dolorum est recusandae eum, ipsum laboriosam ducimus. Magnam, optio iusto?Lorem ipsum dolor
                sit, amet consectetur adipisicing elit. Praesentium perferendis quo autem officiis, nesciunt quasi cum
                non necessitatibus! Tempore commodi maiores inventore delectus earum voluptatibus veritatis sapiente,
                quidem, eligendi quam eius aperiam? Nemo molestiae eveniet natus totam, doloribus minima asperiores
                dolorum est recusandae eum, ipsum laboriosam ducimus. Magnam, optio iusto?Lorem ipsum dolor sit, amet
                consectetur adipisicing elit. Praesentium perferendis quo autem officiis, nesciunt quasi cum non
                necessitatibus! Tempore commodi maiores inventore delectus earum voluptatibus veritatis sapiente,
                quidem, eligendi quam eius aperiam? Nemo molestiae eveniet natus totam, doloribus minima asperiores
                dolorum est recusandae eum, ipsum laboriosam ducimus. Magnam, optio iusto?Lorem ipsum dolor sit, amet
                consectetur adipisicing elit. Praesentium perferendis quo autem officiis, nesciunt quasi cum non
                necessitatibus! Tempore commodi maiores inventore delectus earum voluptatibus veritatis sapiente,
                quidem, eligendi quam eius aperiam? Nemo molestiae eveniet natus totam, doloribus minima asperiores
                dolorum est recusandae eum, ipsum laboriosam ducimus. Magnam, optio iusto?
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
                <option value="Memo">Memo</option>
                <option value="Study">Study</option>
                <option value="Calender">Calender</option>
                <option value="Chart">Chart</option>
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
            <!-- 로그인 전 -->
            <div class="log">
              <a href="login.jsp"><p>Log In</p></a>
              <a href="join.jsp"><p>Join</p></a>
            </div>

            <!-- 로그인후 -->
            <div class="none log">
              <a href="logoutAction.jsp"><p>Log Out</p></a>
              <a href="#"><p class="fas fa-cogs">option</p></a>
            </div>
          </div>
        </div>

        <ul class="timeStamp" id="sortable2">
          <!-- 달력/시계 -->
          <li>
            <article class="myCalendar">
              <h3 id="now2"></h3>
              <div>
                <p id="now"></p>
              </div>
            </article>
          </li>

          <!-- write -->
          <li>
            <article>
              <h3>today <em>7</em> write!</h3>
              <div class="myWrite">
                <p>todo<br /><em>5</em></p>
                <p>memo<br /><em>2</em></p>
              </div>
            </article>
          </li>
        </ul>

        <div class="preview">
          <h2>Your statistics</h2>
          <ol class="flexRo">
            <li onclick="openCurrAccordion3();">Waka Time</li>
            <li onclick="openCurrAccordion4();">Activity</li>
            <li class="none">
              <p>Weekly</p>
              <p>Monthly</p>
            </li>
          </ol>

          <div class="stackChart">
            Preparing
            <!-- 차트 WakaTime -->
            <!-- todolist / memo 총 개수 그래프 -->
          </div>
        </div>

        <div class="preview">
          <!-- 간편옵션 -->
          <ol class="flexRo">
            <li><i class="fas fa-paint-brush"></i>Theme</li>
            <li><i class="fas fa-palette"></i>Background Color</li>
            <li><i class="fas fa-globe"></i>Language</li>
            <li><i class="fas fa-search-dollar"></i>Support</li>
          </ol>

          <div class="optContent">Preparing</div>
        </div>
      </div>
    </section>

    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" defer></script>
    <script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js" defer></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
  </body>
</html>
