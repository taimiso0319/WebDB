<%@ page contentType="text/html; charset=Windows-31J" %>
<META http-equiv="Content-Type" content="text/html;CHARSET=Windows-31J">

<%@ page import="jp.co.hnes.com.*" %>
<%@ page import="java.text.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.net.*" %>
<% request.setCharacterEncoding("Windows-31J"); %>

<%
      //-------------------------operator Proof----------------
      // 非ログインの場合、ログイン画面にforwardする
      String acc = (String)session.getAttribute("ACCOUNT");
      if ( acc == null) {
        request.getRequestDispatcher("index.jsp").forward(request,response);
        return;
      }
      //-------------------------operator Proof----------------
%>


<HTML>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>WebDB</title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="js/jquery.remodal.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/wysihtml5-0.3.0.js"></script>
    <script src="js/bootstrap3-wysihtml5.js"></script>
    <script src="js/prettify.js"></script>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/jquery.remodal.css" rel="stylesheet">
    <link href="css/bootstrap-wysihtml5.css" rel="stylesheet">
  </head>

<body>
  <div class="remodal-bg">
	<nav class="navbar navbar-default navbar-static-top" role="navigation">
  	<div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
	      <span class="sr-only">Toggle navigation</span>
	      <span class="icon-bar"></span>
	      <span class="icon-bar"></span>
	      <span class="icon-bar"></span>
		</button>
	  <a class="navbar-brand" href="#">Home</a>
	</div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">MyBlog</a></li>
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
        <form class="navbar-form navbar-left" role="search">
           <div class="form-group">
             <input type="text" class="form-control" placeholder="Search">
           </div>
           <button type="submit" class="btn btn-default">Submit</button>
      	</form>
        <li><a href="#modal">Write</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<div class="jumbotron">
  <h1>BlogName</h1>

  <script type="text/javascript">
  var test = "<%= request.getAttribute("test")%>";
	document.write(test);
</script>
<%= request.getAttribute("test")%>
 	 <div class="container">
    	ここにブログ説明
  	</div>
  <p><a class="btn btn-primary btn-lg" role="button" href="#LearnModal">Learn more</a></p>
</div>

<div class="remodal" data-remodal-id="LearnModal">
	<div class="profile">ここにプロフィール
		


	</div>
	<a class="remodal-cancel" href="#">Close</a>
</div>
<div class="remodal" data-remodal-id="modal">
	<form>
		<textarea class="textarea form-control" name="Post" placeholder="Enter text ..." style="width: 630px; height: 200px"></textarea>
	</form>

	<script>
	    $('.textarea').wysihtml5();
	</script>
	<script type="text/javascript" charset="utf-8">
	    $(prettyPrint);
	</script>

    <a class="remodal-cancel" href="#">Cancel</a>
    <a class="remodal-confirm" href="#" onclick="disp()">OK</a>
</div>

    <div class="panel-group" id="accordion" name="accs">
		  <div class="art" id="0">
		  	
		  </div>
	</div>
<script type="text/javascript">
	function disp(){
		var node = document.getElementById("iframe").contentWindow.document.getElementsByTagName("body");
		var counter = document.getElementsByName("accs");
		//$('#keikei').attr("id","hoge");
		var tag = parseInt($('.art').attr("id"))+1;
		$('.art').prepend('<div class="panel panel-default"><div class="panel-heading"><h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse'+tag.toString()+'">'+date()+'</a></h4></div><div id="collapse'+tag.toString()+'" class="panel-collapse collapse in"><div class="panel-body">'+node[0].innerHTML+'</div></div></div>');
		$('.art').attr("id",(tag).toString());
		node[0].innerHTML = "";
	}
</script>


<script type="text/javascript">
	function disp(){
		var node = document.getElementById("iframe").contentWindow.document.getElementsByTagName("body");
		var counter = document.getElementsByName("accs");
		//$('#keikei').attr("id","hoge");
		var tag = parseInt($('.art').attr("id"))+1;
		$('.art').prepend('<div class="panel panel-default"><div class="panel-heading"><h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse'+tag.toString()+'">'+date()+'</a></h4></div><div id="collapse'+tag.toString()+'" class="panel-collapse collapse in"><div class="panel-body">'+node[0].innerHTML+'</div></div></div>');
		$('.art').attr("id",(tag).toString());
		node[0].innerHTML = "";
	}
</script>



<script type="text/javascript">
	<!--
	function date(){
		myTbl = new Array("日","月","火","水","木","金","土");
		myD = new Date();
		 
		myYear = myD.getFullYear();
		myMonth = myD.getMonth() + 1;
		myDate = myD.getDate();
		myDay = myD.getDay();
		myHours = myD.getHours();
		myMinutes = myD.getMinutes();
		mySeconds = myD.getSeconds();
		 
		myMess1 = myYear + "年" + myMonth + "月" + myDate + "日";
		myMess2 = myTbl[myDay] + "曜日";
		myMess3 = myHours + "時" + myMinutes + "分" + mySeconds + "秒";
		myMess = myMess1 + " " + myMess2 + " " + myMess3;
		return myMess;
	}
	// -->
</script>

	<div class="text-center">
	    <ul class="pagination">
		  <li class="disabled"><a href="#">&laquo;</a></li>
		  <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
		  <li><a href="#">2</a></li>
		  <li><a href="#">3</a></li>
		  <li><a href="#">4</a></li>
		  <li><a href="#">5</a></li>
		  <li><a href="#">&raquo;</a></li>
		</ul>
	</div>
  </body>
  </div>


</BODY></HTML>
