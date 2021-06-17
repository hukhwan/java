<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
	<%@ page import="java.io.PrintWriter" %>
	<%@ page import="dash.taskDAO" %>
	<%@ page import="dash.tasks" %>
	<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="./css/dashtaskpage.css" />
<script src="https://kit.fontawesome.com/f968a989c6.js"
	crossorigin="anonymous"></script>
<script src="./script/script.js" defer></script>
<title>Dashboard-task</title>
</head>
<body>
	<nav class="sideList">
		<a class="navhead" href="./dash.jsp"> <img
			src="./source/home-solid.svg" />
			<h3>Dashboard Kit</h3>
		</a>

		<ul class="navList">
			<li><a href="./dash.jsp"><img
					src="./source/dashone.svg" />
					<p>Overview</p> </a></li>
			<li><a href="#"><img
					src="./source/dashtwo.svg" />
					<p>Tickets</p> </a></li>
			<li class="activeList"><a href="./dashtaskpage.jsp"
				class="taskLink"><img src="./source/dashthree.svg" />
					<p>Tasks</p> </a></li>
			<li><a href="#"><img
					src="./source/dashfour.svg" />
					<p>Contacts</p> </a></li>
			<li><a href="#"><img
					src="./source/dashfive.svg" />
					<p>Agents</p> </a></li>
			<li class="navListEnd"><a href="#"><img
					src="./source/dashsix.svg" />
					<p>Article</p> </a></li>
			<li class="navSetting"><a href="#"><img
					src="./source/dashseven.svg" />
					<p>Settings</p> </a></li>
			<li><a href="#"><img
					src="./source/dasheight.svg" />
					<p>Subscription</p> </a></li>
		</ul>
	</nav>

	<section class="taskSection">
		<div>
			<div class="headLine">
				<h1>Tasks</h1>

				<div class="headLineProfile">
					<img src="./source/search.svg" alt="search icon" /> <img
						src="./source/dash alarm.svg" alt="alerm" />
					<h2>T'ekaalok</h2>
					<img id="profileImg" src="./source/capt.png" alt="profile picture" />
				</div>
			</div>
		</div>

		<div class="subexplain">
			<div class="taskhead flexRo">
				<h2>All Tasks</h2>
				<div class="flexRo">
					<p>
						<i class="fas fa-sort-amount-up"></i> Sort
					</p>
					<p>
						<i class="fas fa-filter"></i> Filter
					</p>
				</div>
			</div>
			<form class="createTask" action="writeAction.jsp" method="get">
				<img src="./source/plus.svg" alt="" class="trigger" />

				<div class="maker">
					<div class="makeNotice">
						<h4>Create new task</h4>
						<label for="work"></label> <input type="text" id="work"
							name="dashTitle" placeholder="Please enter a title" />

						<h4>Explain</h4>
						<label for="explain1"></label>
						<textarea id="explain1" name="dashContent" rows="5"
							cols="58"></textarea>

						<h4>Choose difficulty</h4>
						<div class="difficulty">
							<input type="text" id="dif_default" name=""
								class="upanddown DEFAULT" value="DEFAULT"  readonly/>
								
							<input type="text"
								id="dif_low" name="" class="upanddown LOW" value="LOW" readonly/>

							<input type="text" id="dif_normal" name=""
								class="upanddown NORMAL" value="NORMAL" readonly/>
								
							<input type="text"
								id="dif_high" name="" class="upanddown HIGH" value="HIGH" readonly/>

							<input type="text" id="dif_clear" name=""
								class="upanddown CLEAR" value="CLEAR" readonly/>
						</div>
						<h4>Dead Line</h4>

						<label for="deadLine"></label> <input type="date" id="deadLine"
							name="dashDate" value="2021-06-10" />

						<button type="submit">Create New Task</button>
					</div>
				</div>
			</form>

			<form action="checkAction.jsp" method="get">
				<ol class="subexp">
					<%
					int pageNumber = 1;
					if (request.getParameter("pageNumber") != null) {
						pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
					}
					%>
					<%
					taskDAO taskDAO = new taskDAO();
					ArrayList<tasks> list = taskDAO.getList(pageNumber);
					for (int i = 0; i < list.size(); i++){;
					%>
					<li class="todoList">
						<div class="todo">
							<div>
								<label for="task1"></label> 
								<input type="checkbox" id="task1" name="dashCheck" value="false" onchange="YnCheck(this);"/>
								<button type="submit" id="checkSubmit"></button>
								<p><%=list.get(i).getDashTitle()%></p>
							</div>
							<i class="opnPop fas fa-chevron-down"></i>
							<div>
								<i id="readDate"><%=list.get(i).getDashDate().substring(0, 11)%>
								</i> <strong class="upanddown <%= list.get(i).getDashDifficulty() %>"></strong>
								<!-- fas fa-chevron-up -->
								<i class="fas fa-ellipsis-v"> </i>
								<div class="pop">
									<input type="hidden" name="modify" id="modify" value="" />
									<p onchange="YnCheck2(this);">Modify</p>
									<input type="hidden" name="delete" id="delete" value="" />
									<p onchange="YnCheck2(this);">Delete</p>
								</div>
							</div>
						</div> <em><pre><%= list.get(i).getDashContent() %></pre></em>
					</li>
					<%
					}
					%>
				</ol>
			</form>
			
			<!-- ����¡ ó������ -->
			<% 
				if(pageNumber != 1){
			%>
				<a href="dashtaskpage.jsp?pageNumber=<%= pageNumber -1 %>">����</a>

			<% 
				}if(taskDAO.nextPage(pageNumber + 1)){
			%>
				<a href="dashtaskpage.jsp?pageNumber=<%= pageNumber +1 %>">����</a>
			<%
				}
			%>
			
		</div>
	</section>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
</body>
</html>
