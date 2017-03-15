<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
</style>
	<title>Registration</title>
</head>
<body>
<div style="background-color:#F4F4F4; padding:20px; width:500px" >
	<p style="font-family:Sans-Serif;"><strong>"${registerRequest.name}" 님</strong>
		가입이 성공적으로 완료 되었습니다.</p><br>
	<p style="font-family:sans-Serif;">ENJOY FLAT RATE INTERNATIONAL SHIPPING
FOR A LIMITED TIME ONLY APPLICABLE COUNTRIES </p>
	<br>
	<button class="button" type="button" onclick="location.href='/main'">Main</button>
	<button class="button" type="button" onclick="location.href='/survey'">Survey</button>
</div> 
</body>
</html>