<?php
header("content-type:text/html;charset=utf-8");
header("Access-Control-Allow-Origin: *");

//连接数据库
if (!empty($_POST)) {
	$content = $_POST["content"];
	$time = $_POST['time'];
	$title = $_POST['title'];
	$type = $_POST["type"];
	$mysqli = mysqli_connect('localhost', 'root', 'root', 'vue_admin');
	if (!$mysqli) {
		die("数据连接失败");
	}
	echo "数据库连接成";
	mysqli_query($mysqli, 'set names utf8');
	$sql = "INSERT INTO `blog`(`title`,`type`,`time`,`content`) VALUES('$title','$type','$time','$content')";
	mysqli_query($mysqli, $sql);//向数据库添加数据
	if(mysqli_affected_rows($mysqli)){//添加成功时
		echo $content;
	}
}

?>