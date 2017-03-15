<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
<style>
.button {
   border: 1px solid #a8a8a8;
   background: #dedede;
   background: -webkit-gradient(linear, left top, left bottom, from(#ffffff), to(#dedede));
   background: -webkit-linear-gradient(top, #ffffff, #dedede);
   background: -moz-linear-gradient(top, #ffffff, #dedede);
   background: -ms-linear-gradient(top, #ffffff, #dedede);
   background: -o-linear-gradient(top, #ffffff, #dedede);
   background-image: -ms-linear-gradient(top, #ffffff 0%, #dedede 100%);
   padding: 4px 8px;
   -webkit-border-radius: 4px;
   -moz-border-radius: 4px;
   border-radius: 4px;
   -webkit-box-shadow: rgba(255,255,255,0.4) 0 1px 0, inset rgba(255,255,255,0.4) 0 1px 0;
   -moz-box-shadow: rgba(255,255,255,0.4) 0 1px 0, inset rgba(255,255,255,0.4) 0 1px 0;
   box-shadow: rgba(255,255,255,0.4) 0 1px 0, inset rgba(255,255,255,0.4) 0 1px 0;
   text-shadow: #e0e0e0 0 1px 0;
   color: #000000;
   font-size: 12px;
   font-family: helvetica, serif;
   text-decoration: none;
   vertical-align: middle;
   }
.button:hover {
   border: 1px solid #383838;
   text-shadow: #e0e0e0 0 1px 0;
   background: #dedede;
   background: -webkit-gradient(linear, left top, left bottom, from(#ffffff), to(#dedede));
   background: -webkit-linear-gradient(top, #ffffff, #dedede);
   background: -moz-linear-gradient(top, #ffffff, #dedede);
   background: -ms-linear-gradient(top, #ffffff, #dedede);
   background: -o-linear-gradient(top, #ffffff, #dedede);
   background-image: -ms-linear-gradient(top, #ffffff 0%, #dedede 100%);
   color: #000000;
   }
.button:active {
   text-shadow: #e0e0e0 0 1px 0;
   border: 1px solid #383838;
   background: #cccccc;
   background: -webkit-gradient(linear, left top, left bottom, from(#ebebeb), to(#dedede));
   background: -webkit-linear-gradient(top, #ebebeb, #cccccc);
   background: -moz-linear-gradient(top, #ebebeb, #cccccc);
   background: -ms-linear-gradient(top, #ebebeb, #cccccc);
   background: -o-linear-gradient(top, #ebebeb, #cccccc);
   background-image: -ms-linear-gradient(top, #ebebeb 0%, #cccccc 100%);
   color: #000000;
   }
.textarea{
  border: 1px solid #bcbcbc;
  border-radius: 0px;
  -webkit-appearance: none;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  height: 32px;
  width: 220px;
}
</style>
	<title>Information</title>
</head>
<body>
	<fieldset style="background-color:#F4F4F4; padding:10px; width:500px">
    <legend>Personal Information</legend>
	<h2>Please Write information correctly</h2>
	<form action="step3" method="post">
	<p>
		<label style="font-family:Sans-Serif;">Email Address (이메일 주소):<br>
		<input class="textarea" type="text" size="45" style="font-size:11pt; color:#848484;"
		name="email" id="email" value="${registerRequest.email}">
		</label>
	</p>
	<p>
		<label style="font-family:Sans-Serif;">First Name (이름):<br>
		<input class="textarea" type="text" size="45" style="font-size:11pt; color:#848484;"
		name="name" id="name" value="${registerRequest.name}">
		</label>
	</p>
	<p>
		<label style="font-family:Sans-Serif;">Password (비밀번호):<br>
		<input class="textarea" type="password" size="45" style="font-size:11pt; color:#848484;"
		name="password" id="password">
		</label>
	</p>
	<p>
		<label style="font-family:Sans-Serif;">Confirm Password (비밀번호 확인):<br>
		<input class="textarea" type="password" size="45" style="font-size:11pt; color:#848484;"
		name="confirmPassword" id="confirmPassword">
		</label>
	</p>
	<br>
	<input class="button" type="submit" value=Summit />
	</form>
	</fieldset>
</body>
</html>