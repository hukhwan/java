<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="./css/dash.css" />
    <title>Dashboard</title>
    <link rel="head icon" href="./source/home-solid.svg" type="svg/icon" />
  </head>
  <body>
    <nav class="sideList">
      <a class="navhead" href="./dash.jsp">
        <img src="./source/home-solid.svg" />
        <h3>Dashboard Kit</h3>
      </a>

      <ul class="navList">
        <li class="activeList">
          <a href="./dash.jsp"
            ><img src="./source/dashone.svg" />
            <p>Overview</p>
          </a>
        </li>
        <li>
          <a href="#"
            ><img src="./source/dashtwo.svg" />
            <p>Tickets</p>
          </a>
        </li>
        <li>
          <a href="./dashtaskpage.jsp" class="taskLink"
            ><img src="./source/dashthree.svg" />
            <p>Tasks</p>
          </a>
        </li>
        <li>
          <a href="#"
            ><img src="./source/dashfour.svg" />
            <p>Contacts</p>
          </a>
        </li>
        <li>
          <a href="#"
            ><img src="./source/dashfive.svg" />
            <p>Agents</p>
          </a>
        </li>
        <li class="navListEnd">
          <a href="#"
            ><img src="./source/dashsix.svg" />
            <p>Article</p>
          </a>
        </li>
        <li class="navSetting">
          <a href="#"
            ><img src="./source/dashseven.svg" />
            <p>Settings</p>
          </a>
        </li>
        <li>
          <a href="#"
            ><img src="./source/dasheight.svg" />
            <p>Subscription</p>
          </a>
        </li>
      </ul>
    </nav>

    <main>
      <section class="headLine">
        <h1>Overview</h1>

        <div class="headLineProfile">
          <img src="./source/search.svg" alt="search icon" />
          <img src="./source/dash alarm.svg" alt="alerm" />
          <h2>T'ekaalok</h2>
          <img id="profileImg" src="./source/capt.png" alt="profile picture" />
        </div>
      </section>

      <section class="ref">
        <a
          class="ref"
          href="https://www.figma.com/file/eJtYWFqNdjMLF5WbMDtVD8/Figma-Admin-Dashboard-UI-Kit-(Community)?node-id=0%3A1"
          >Reference : click
        </a>
      </section>

      <section>
        <dl class="databox">
          <div>
            <dt>Unresolved</dt>
            <dd>60</dd>
          </div>

          <div>
            <dt>Overdue</dt>
            <dd>16</dd>
          </div>

          <div>
            <dt>Open</dt>
            <dd>43</dd>
          </div>

          <div>
            <dt>On hold</dt>
            <dd>64</dd>
          </div>
        </dl>
      </section>

      <section class="todayTrend">
        <div class="graf">
          <strong>Today's trends</strong>

          <div class="chartExplain">
            <p>as of 31 April 2021, 05:10 AM</p>
            <div>
              <p><img src="./source/line.svg" /> Today</p>
              <p><img src="./source/line.svg" />Yesterday</p>
            </div>
          </div>

          <img class="chartImg" src="./source/chart.png" />
        </div>

        <dl class="explain">
          <div>
            <dt>Resolved</dt>
            <dd>449</dd>
          </div>

          <div>
            <dt>Received</dt>
            <dd>426</dd>
          </div>

          <div>
            <dt>Average first response time</dt>
            <dd>33m</dd>
          </div>

          <div>
            <dt>Average responese time</dt>
            <dd>3h 8m</dd>
          </div>

          <div>
            <dt>Resolution within SLA</dt>
            <dd>94%</dd>
          </div>
        </dl>
      </section>

      <section class="ticketTask">
        <div class="unresolvedTickets">
          <div class="subtitle">
            <div class="ticketTitle">
              <strong>Unresolved tickets</strong>
              <a href="./dashtaskpage.html">View details</a>
            </div>
            <div class="gs">
              <p class="gsfirstchild">Group:</p>
              <p>Support</p>
            </div>
          </div>

          <div class="subexplain">
            <ol class="subex">
              <li>
                <p>Contact Email not Linked</p>
                <p class="dayopt">May 26, 2019</p>
              </li>
              <li>
                <p>Adding Images to Featured Posts</p>
                <p class="dayopt">May 26, 2019</p>
              </li>
              <li>
                <p>When will I be charged this month?</p>
                <p class="dayopt">May 26, 2019</p>
              </li>
              <li>
                <p>Payment not going through</p>
                <p class="dayopt">May 25, 2019</p>
              </li>
            </ol>
          </div>
        </div>

        <div class="unresolvedTickets">
          <div class="subtitle">
            <div class="ticketTitle">
              <strong>Tasks</strong>
              <a href="./dashtaskpage.html">View all</a>
            </div>
            <div class="gs">
              <p class="gsfirstchild">Today</p>
            </div>
          </div>

          <div class="subexplain">
            <form action="">
              <ol class="subexp">
                <li>
                  <label for="work"></label>
                  <input type="text" id="work" name="work" placeholder="Create new task" />
                  <button class="buttonImg" type="submit" name="submit"><img src="./source/plus.svg" alt="" /></button>
                </li>

                <li>
                  <label for="taskone"></label>
                  <input type="checkbox" id="taskone" checked />
                  <p>Finish ticket update</p>
                  <p class="upanddown yellow"></p>
                </li>

                <li>
                  <label for="tasktwo"></label>
                  <input type="checkbox" id="tasktwo" />
                  <p>Create new ticket example</p>
                  <p class="upanddown green"></p>
                </li>

                <li>
                  <label for="taskthree"></label>
                  <input type="checkbox" id="taskthree" />
                  <p>Update ticket report</p>
                  <p class="upanddown gray"></p>
                </li>
              </ol>
            </form>
          </div>
        </div>
      </section>
    </main>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
  </body>
</html>
