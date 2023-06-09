<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<c:url value="/resources/fe/" var="URL"></c:url>


<div class="login-box " style="margin: auto; margin-top: 100px">
	<!-- /.login-logo -->
	<div class="card card-outline card-primary">
		<div class="card-header text-center">
			<a href="/" class="h1"><b>T2K</b>Shop</a>
		</div>
		<!-- <div class="logo_container">
		<a href="/"><span>t2k</span>Shop</a>
	</div>> -->
		<div class="card-body">
			<p class="login-box-msg">${message == null ? 'Nhập tài khoản và mật khẩu để
											đăng nhập' :message}</p>
			<form action="/" method="post" enctype="multipart/form-data">
				<div class="input-group mb-3">
					<input type="email" class="form-control" placeholder="Email"
						name="email">
					<div class="input-group-append">
						<div class="input-group-text">
							<span class="fas fa-envelope"></span>
						</div>
					</div>
				</div>
				<div class="input-group mb-3">
					<input type="password" class="form-control" placeholder="Password"
						name="hashedpassword">
					<div class="input-group-append">
						<div class="input-group-text">
							<span class="fas fa-lock"></span>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-8">
						<div class="icheck-primary">
							<input type="checkbox" id="remember"> <label
								for="remember"> Remember Me </label>
						</div>
					</div>
					<%-- <p style="color: red" th:text="${error}"></p> --%>
					<!-- /.col -->
					<div class="col-4">
						<button type="submit" class="btn btn-primary btn-block">Sign
							In</button>
					</div>
					<!-- /.col -->
				</div>
			</form>

			<div class="social-auth-links text-center mt-2 mb-3">
				<a href="#" class="btn btn-block btn-primary"> <i
					class="fab fa-facebook mr-2"></i> Sign in using Facebook
				</a> <a href="#" class="btn btn-block btn-danger"> <i
					class="fab fa-google-plus mr-2"></i> Sign in using Google+
				</a>
			</div>
			<!-- /.social-auth-links -->

			<p class="mb-1">
				<a href="forgotpassword">I forgot my password</a>
			</p>
			<p class="mb-0">
				<a href="register" class="text-center">Register a new membership</a>
			</p>
		</div>
		<!-- /.card-body -->
	</div>
	<!-- /.card -->
</div>
<!-- /.login-box -->

