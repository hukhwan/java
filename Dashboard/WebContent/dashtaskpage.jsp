<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
						<textarea type="text" id="explain1" name="dashContent" rows="5"
							cols="58"></textarea>

						<h4>Choose difficulty</h4>
						<div class="difficulty">
							<input type="text" id="dif_default" name=""
								class="upanddown gray" value="DEFAULT" />
								
							<input type="text"
								id="dif_low" name="" class="upanddown yellow" value="LOW" />

							<input type="text" id="dif_normal" name=""
								class="upanddown green" value="NORMAL" />
								
							<input type="text"
								id="dif_high" name="" class="upanddown red" value="HIGH" />

							<input type="text" id="dif_clear" name=""
								class="upanddown clear" value="CLEAR" />
						</div>
						<h4>Dead Line</h4>

						<label for="deadLine"></label> <input type="date" id="deadLine"
							name="dashDate" value="2021-06-10" />

						<button type="submit">Create New Task</button>
					</div>
				</div>
			</form>

			<form action="" method="">
				<ol class="subexp">
					<li class="todoList">
						<div class="todo">
							<div>
								<label for="task1"></label> <input type="checkbox" id="task1"
									name="task1" />
								<p>Car wash on 20:00</p>
							</div>
							<i class="opnPop fas fa-chevron-down"></i>
							<!-- fas fa-chevron-down -->
							<div>
								<i>date</i> <strong class="upanddown yellow"></strong>
								<!-- fas fa-chevron-up -->
								<i class="fas fa-ellipsis-v"> </i>
								<div class="pop">
									<p>Modify</p>
									<p>Delete</p>
								</div>
							</div>
						</div> <em>consectetur adipisicing elit. Aut minus alias ducimus ea
							distinctio culpa quasi ratione. dolor sit amet consectetur
							adipisicing elit. Aut minus alias ducimus ea distinctio culpa
							quasi ratione. Perferendis, recusandae neque!</em> <em class="onDate"></em>
					</li>

					<li class="todoList">
						<div class="todo">
							<div>
								<label for="task2"></label> <input type="checkbox" id="task2"
									name="task2" />
								<p>Study Java</p>
							</div>
							<i class="opnPop fas fa-chevron-down"></i>
							<div>
								<i>date</i> <strong class="upanddown green"></strong> <i
									class="fas fa-ellipsis-v"> </i>
								<div class="pop">
									<p>Modify</p>
									<p>Delete</p>
								</div>
							</div>
						</div> <em>ipsum dolor sit amet consectetur adipisicing elit.
							Doloremque neque vel assumenda porro! Odit hic quasi veniam
							similique labore mollitia error nisi magni totam alias voluptates
							quam quos corrupti asperiores itaque quo beatae maxime ullam
							illum, sequi minima reprehenderit quia veritatis doloremque? Esse
							asperiores distinctio ipsam nihil! Aperiam, provident dolore.</em> <em
						class="onDate"></em>
					</li>

					<li class="todoList">
						<div class="todo">
							<div>
								<label for="task3"></label> <input type="checkbox" id="task3"
									name="task3" checked />
								<p>Update ticket report</p>
							</div>
							<i class="opnPop fas fa-chevron-down"> </i>
							<div>
								<i>date</i> <strong class="upanddown gray"></strong> <i
									class="fas fa-ellipsis-v"> </i>
								<div class="pop">
									<p>Modify</p>
									<p>Delete</p>
								</div>
							</div>
						</div> <em>sit amet consectetur adipisicing elit. Est, quasi?
							Dolorum saepe provident consequuntur cumque suscipit fuga quis in
							vel ipsam nemo! Earum soluta odio quae iusto aperiam dolore
							minima. sit amet consectetur adipisicing elit. Est, quasi?
							Dolorum saepe provident consequuntur cumque suscipit fuga quis in
							vel ipsam nemo! Earum soluta odio quae iusto aperiam dolore
							minima. sit amet consectetur adipisicing elit. Est, quasi?
							Dolorum saepe provident consequuntur cumque suscipit fuga quis in
							vel ipsam nemo! Earum soluta odio quae iusto aperiam dolore
							minima.</em> <em class="onDate"></em>
					</li>
				</ol>
			</form>
		</div>
	</section>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
</body>
</html>
