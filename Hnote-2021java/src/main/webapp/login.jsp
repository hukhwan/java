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
    <title>H1note-login</title>
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
              <em class="blind">home</em>
            </i>
          </a>
          <a href="./todoList.jsp" class="navList">
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
            <em class="blind">Option</em>
          </i>
        </a>
      </nav>
    </header>

    <section class="home flexRo">
      <!-- ?????? ?????????api ?????? -->
      <form action="loginAction.jsp" method="GET" class="logindata">
        <h3>login</h3>
        <div>
          <label for="userID">ID</label>
          <input type="text" name="userID" id="userID" placeholder="Please enter your ID" autocomplete="off" />
        </div>
        <div>
          <label for="userPassword">PS</label>
          <input type="password" name="userPassword" id="userPassword" placeholder="enter your password" />
        </div>
        <input type="submit" value="Submit" name="submit" />
      </form>
    </section>

    <!-- <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" defer></script>
    <script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js" defer></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script> -->
  </body>
</html>
