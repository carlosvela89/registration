<%@ page contentType="text/html; charset=utf-8"%>
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
<title>Survey</title>
</head>
<body>
	<fieldset style="background-color:#F4F4F4; padding:10px; width:500px">
    <legend>Survey Form</legend>
	<h2 style="font-family:Sans-Serif;"><b>Survey</b></h2>
	<form method="post">
		<c:forEach var="q" items="${questions}" varStatus="status">
			<p style="font-family:Sans-Serif;">
				${status.index+1}.${q.title}<br/>
				<c:if test="${q.choice}">
					<c:forEach var="option" items="${q.options}">
						<label><input style="font-family:MS Gothic;" type="radio"
							name="responses[${status.index}]" value="${option}">
							${option}</label>
					</c:forEach>
				</c:if>
				<c:if test="${! q.choice}">
					<input class="textarea" style="font-family:Sans-Serif;" type="text" name="responses[${status.index}]">
				</c:if>
			</p>
		</c:forEach>
		<p style="font-family:Sans-Serif;">
			<label>4.Respondent's location (응답자위치)<br> <input class="textarea" type="text"
				name="res.location">
			</label>
		</p>
		<p style="font-family:Sans-Serif;">
			<label>5.Respondent'age (응답자 나이):<br> <input class="textarea" type="text" name="res.age">
			</label>
		</p>
		<input class="button" type="submit" value="SEND">
	</form>
	</fieldset>
</body>
</html>