<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String link = request.getParameter("link");
	String language = request.getParameter("language_cd");
	String title = request.getParameter("title");
	String image_link = request.getParameter("image_link");
	String[] content = request.getParameter("content").split("\n");
	String time = request.getParameter("date");
%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
  <link rel="stylesheet" href="./result.css">
  <script src="http://code.jquery.com/jquery-latest.min.js?v=1"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>
 <center>
  <div class="row text-center">
    <div class="col-xs-6 col-md-3">
      <a href="#" class="thumbnail">
        <img src="<%= image_link %>" alt="news_image">
      </a>
    </div>
  </div>
  
  <div class="content">
    <div class="ct-line-10 rel"></div>
    <div class="ct-title">
      <span>
        <b><%= title %></b>
      </span>
    </div>
    <ul class="ct-pub_date rel">
      <li class="pub_date-img_div">
        <img src="http://static.swips.co/content/static/img/news_icon.png" alt="news" class="pub_date-img rel">
      </li>
      <li class="pub_date-creator">
        <div>
          <span>SWIPS</span>
        </div>
      </li>
      <li class="pub_date-divider"></li>
      <li class="pub_date-div">
        <div>
          <span><%= time %></span>
        </div>
      </li>
    </ul>
    <div class="ct-line-8 rel"></div>
    <div class="ct-divider rel"></div>
    <div class="ct-line-17 rel"></div>
    <div class="ct-main">
      <p>
        <% 
        	for (String wo : content){
        		out.println(wo+"<br>");
        	}
        %>
      </p>
    </div>
    <div class="ct-line-17 rel"></div>
    <div class="ct-divider rel"></div>
    <div class="ct-line-13 rel"></div>
    <div class="ct-source">
      <table class="ct-table">
        <tr>
          <td>출처 | &nbsp;</td>
          <td><a href="<%= link %>"><%= link %></a></td>
        </tr>
      </table>
    </div>
    <div class="ct-line-13 rel"></div>
    <div class="ct-blankSpace-free"></div>
  </div>
  </center>
</body>

</html>
