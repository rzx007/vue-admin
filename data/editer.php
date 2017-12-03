<?php
header("content-type:text/html;charset=utf-8");
header("Access-Control-Allow-Origin: *");
$id = $_GET['id'];
$mysqli = mysqli_connect('localhost', 'root', 'root', 'vue_admin');
if (!$mysqli) {
	die("数据连接失败");
}
mysqli_query($mysqli, 'set names utf8');
$sql = "SELECT * FROM `blog`WHERE `id`='$id'";
$result = mysqli_query($mysqli, $sql);
//将结果转换为数组
$rows = array();
while ($r = mysqli_fetch_assoc($result)) {
	$rows[] = $r;
}
//将结果转化成json格式的字符串，必须以输出的形式返回
echo json_encode($rows);
?>