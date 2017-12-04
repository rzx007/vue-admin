<?php
header("content-type:text/html;charset=utf-8");
header("Access-Control-Allow-Origin: *");

//连接数据库
if (!empty($_POST)) {
	$content = $_POST["content"];
	$time = $_POST['time'];
	$title = $_POST['title'];
	$type = $_POST["type"];
	$id = $_POST["id"];
	$username =$_POST['username'];
	$description = $_POST['description'];
	$mysqli = mysqli_connect('localhost', 'root', 'root', 'vue_admin');
	if (!$mysqli) {
		die("数据连接失败");
	}
	echo "数据库连接成功";
	mysqli_query($mysqli, 'set names utf8');
	if($id != 'undefined'){
		$sqls = "UPDATE blog SET title='$title',type='$type',time='$time',content='$content',username='$username',description='$description' WHERE id ='$id'";
		if(mysqli_query($mysqli, $sqls)){
				echo "更新成功<br>";
				echo $id;
		}
	}else{
		$sql = "INSERT INTO blog(title,type,time,content,username,description) VALUES ('$title','$type','$time','$content','$username','$description')";
		if (mysqli_query($mysqli, $sql)) {
    		echo "新记录插入成功";
		} else {
    		echo "Error: " . $sql . "<br>" . mysqli_error($mysqli);
		}

	}
}
?>