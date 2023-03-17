<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 메인</title>
<link rel="stylesheet" href="${ctx}/css/index.css">
<link rel="stylesheet" href="${ctx}/css/admin_main.css">
</head>

<body>
	<div class="container">
		<nav></nav>
		<div class="main">

			<!-- 좌측아이콘 시작 -->
			<jsp:include page="../../icon_bar.jsp" />
			<!-- 좌측아이콘 끝 -->

			<!-- 왼쪽메인화면 시작 -->
			<div class="left-container">
				<div class="info1">

					<!-- 공지사항 시작 -->
					<div class="board-title">
						<div class="board-img">
							<img src="https://cdn-icons-png.flaticon.com/512/568/568297.png"
								alt="">
						</div>
						<div class="board-name">공지사항</div>
					</div>
					<div class="board-content">
						<div class="line"></div>
						<div class="write">
							<a href="#" id="content1">공지1</a>
						</div>
						<div class="line"></div>
						<div class="write">
							<a href="#" id="content1">공지2</a>
						</div>
						<div class="line"></div>
						<div class="write">
							<a href="#" id="content1">공지3</a>
						</div>
						<div class="line"></div>
						<div class="write">
							<a href="#" id="content1">공지4</a>
						</div>
						<div class="line"></div>
						<div class="write">
							<a href="#" id="content1">공지5</a>
						</div>
						<div class="line"></div>
					</div>
					<!-- 공지사항 끝 -->

				</div>

				<div class="info2">

					<!-- 이번주 일정표 시작 -->
					<div class="schedule">
						<div class="schedule-title">
							<div class="schedule-img">
								<img
									src="https://cdn-icons-png.flaticon.com/512/1216/1216995.png"
									alt="">
							</div>
							<div class="schedule-name">이번주 일정</div>
						</div>
						<div class="schedule-content">
							<div class="week">
								<div id="mon"></div>
								<div id="tues"></div>
								<div id="wednes"></div>
								<div id="thurs"></div>
								<div id="fri"></div>
							</div>
						</div>
					</div>
					<!-- 이번주 일정표 끝 -->

					<!-- 메모장 시작 -->
					<div class="note">
						<div class="note-title">
							<div class="note-img">
								<img
									src="https://cdn-icons-png.flaticon.com/512/2885/2885538.png"
									alt="">
							</div>
							<div class="note-name">메모장</div>
						</div>
						<div class="note-content">
							<div class="note-write"></div>
						</div>
					</div>
					<!-- 메모장 끝 -->

				</div>
			</div>
			<!-- 왼쪽메인화면 끝 -->

			<!-- 오른쪽 메인화면 시작 -->
			<div class="right-container"></div>
			<!-- 오른쪽 메인화면 끝 -->

		</div>
		<div class="footer"></div>
	</div>
	<footer> </footer>
</body>

</html>