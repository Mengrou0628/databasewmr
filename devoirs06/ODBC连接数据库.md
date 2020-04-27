### 直接用php连接数据库


```
<?php
$dbhost = "localhost";  //MySQL服务器主机地址
$dbuser = "root";      //MySQL用户名
$dbpass = ""; //MySQL用户名密码

$conn = mysqli_connect($dbhost, $dbuser, $dbpass);

if(!$conn)
{
  echo "连接失败了！！";
}

mysqli_select_db($conn,"bicovid"); //连接数据库

mysqli_query($conn,"set names utf8"); //防止出现中文乱码的情况
$sql_fetch_stopwords = "SELECT * FROM sw_zh_cn";

$fetch_stopwords = mysqli_query($conn,$sql_fetch_stopwords);

$stopwords = array();

while($row = mysqli_fetch_array($fetch_stopwords, MYSQLI_ASSOC))
 {
	$stopwords[] = $row["stopwords"];
 } 

 //print_r($stopwords);
 foreach($stopwords as $key=>$value)
 {
     echo $key.":".$value."<br>";	 
 }
 ?>
```
显示效果如图1
![avatar](https://github.com/Mengrou0628/databasewmr/raw/master/img/%E5%9B%BE6.1.png)

### php通过ODBC连接数据库
```
<?php
$conn=odbc_connect('gpsmysql','root','');
if (!$conn)
{
    exit("连接失败: " . $conn);
}

$sql="SELECT * FROM sw_zh_cn";
$rs=odbc_exec($conn,$sql);

if (!$rs)
{
    exit("SQL 语句错误");
}
echo "<table border='1'><tr>";
echo "<th>stopwords</th></tr>";

while (odbc_fetch_row($rs))
{
    $conname=odbc_result($rs,'stopwords');
    echo "<tr><td>$conname</td>";
}
odbc_close($conn);
echo "</table>";
?>
```
显示效果如图2
![avatar](https://github.com/Mengrou0628/databasewmr/raw/master/img/%E5%9B%BE6.2.png)
### php通过ODBC连接sqlite数据库
```
<?php
$conn=odbc_connect('gpssqlite3','root','');
if (!$conn)
{
    exit("连接失败: " . $conn);
}

$sql="SELECT * FROM student";
$rs=odbc_exec($conn,$sql);

if (!$rs)
{
    exit("SQL 语句错误");
}
echo "<table border='1'><tr>";
echo "<th>score</th></tr>";

while (odbc_fetch_row($rs))
{
    $conname=odbc_result($rs,'score');
    echo "<tr><td>$conname</td>";
}
odbc_close($conn);
echo "</table>";
?>
```
显示效果如图3
![avatar](https://github.com/Mengrou0628/databasewmr/raw/master/img/%E5%9B%BE6.3.png)
