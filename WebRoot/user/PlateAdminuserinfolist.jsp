<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>设置版主页面</title>
</head>
<body>
	<%@include file="PostPlateHead.jsp"%>
	<br>
	<br>
	<div class="container">
		<div class="card-panel center card-panel hoverable">
			<span class="black-text flow-text">用户信息列表</span>
		</div>
		<div class="row">
			<c:forEach var="user2" items="${userlist}">
				<div class="col s12 m6">
					<div class="card card-panel hoverable">
						<div class="card-content">
							<span class="card-title">用户名：${user2.username}</span>
							<p>ID：${user2.id }</p>
							<p>密码：${user2.password }</p>
						</div>
						<div class="card-action">
							<c:if test="${user2.rank!=1&&user2.username ne 'anonymous'}">
								<a href="admin_setPlateAdmin.action?id=${user2.id}"> <c:if
										test="${user2.rank==2&&user2.plateid==nowppppp}">取消当前版块版主权限</c:if> <c:if
										test="${user2.rank==0}">设置为当前版主</c:if> <c:if
										test="${user2.rank==2&&user2.plateid!=nowppppp}">
								取消其他版块版主权限
							</c:if>
								</a>
							</c:if>
							<c:if test="${user2.rank==1}">已经是超级管理员权限</c:if>
							<c:if test="${user2.rank!=1&&user2.username eq 'anonymous'}">游客身份不能设置</c:if>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
		<div class="col s12 center">
			<a class="waves-effect light-blue lighten-1 btn-large"
				href="post_displayPosts.action?plateid=${nowppppp}"> <i
				class="material-icons right">settings_backup_restore</i>返回帖子列表
			</a>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<%@include file="../LoginRegisterTail.jsp"%>
</body>
</html>
