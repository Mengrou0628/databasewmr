### sqlite数据库系统安装步骤

##### 下载网址：https://www.sqlite.org/download.html
由于我的电脑操作系统是64位的，所以我下载了sqlite-dll-win64-x64-3310100.zip和sqlite-tools-win32-x86-3310100.zip
创建文件夹C:\sqlite,并在此文件夹下解压了下载的两个压缩文件，得到sqlite.def、sqlite3.dll和sqlite3.exe文件
添加C:\sqlite到PATH环境变量，具体步骤如下：

*1.右击桌面上此电脑，选择属性；*

*2.在属性中左侧点击高级系统设置；*

*3.在弹出的系统属性对话框中点击环境变量；*

*4.在系统变量中找到path，点击编辑按钮；*

*5.在弹出的对话框中将C:\sqlite拷贝进去即可；*

### sqlite数据库管理工具安装步骤

我安装的数据库管理工具是sqlitestudio
下载网址：https://sqlitestudio.pl/index.rvt?act=download
下载文件SQLiteStudio-3.2.1.zip解压安装即可

### 测试内容

*1. 数据库系统的连接和数据库的创建；在桌面创建了空白的test.db文件后打开sqlitestudio点击左上角database--add database，
在弹出的窗口里添加test.db文件，点击左下角测试连接，出现绿色√，连接成功，点击OK，创建数据库；*

*2. 数据库表的创建；双击建立好的test数据库，选择tables在工具栏点击新建表按钮，输入表名，点击add columns，设置字段名，数据类型，选择约束，点击OK，根据需要添加列，点击"commit structure changes"以保存该表和字段；*

*3. 添加数据，选择“数据”选项卡，点击“插入行”图标按钮，添加数据，完成后点击提交；*

*4. 数据修改，在左侧找到需要修改的表，右击可以进行编辑，删除等操作；*

### mysql workbench安装步骤

*1. 下载安装包，按步骤完成安装；*

*2. 配置环境变量，我的电脑右键属性--高级系统设置--环境变量，添加默认安装路径到path中；*

*3. 打开命令提示符，输入mysql -u root -p'密码'，测试数据库的连接；*

### 测试内容：（在cmd中）

###### 创建库：create database 库名;

###### 删除库：drop database 库名;

###### 使用库：use 库名;

###### 查看当前使用数据库：select database();

###### 创建表：create table 表名 (

###### 列名称1 数据类型,
###### 列名称2 数据类型,
###### 列名称3 数据类型,

###### ...);

###### 删除表：drop table 表名;

###### 查询表：select * from 表名;

###### 查看表结构：desc 表名；

###### 增加列：alter table 表名 add 列名 字符格式 not null;

###### 修改列：alter table 表名 modify 列名 字符格式 not null;

###### 删除列：alter table 表名drop column 列名；

### （在workbench中)

在 SCHEMAS 列表的空白处右击，选择“Create Schema…”，则可创建一个数据库。
在创建数据库的对话框中，在 Name 框中输入数据库的名称 test_db，在 Collation 下拉列表中选择数据库指定的字符集。单击 Apply 按钮，即可创建成功.在创建数据库的对话框中设置完成之后，可以预览当前操作的 SQL 脚本，即 CREATE DATABASE test_db，然后单击 Apply 按钮，最后在下一个弹出的对话框中直接单击 Finish 按钮，即可完成数据库 test_db 的创建
成功创建数据库后，可以修改数据库的字符集，在需要修改字符集的数据库上右击，选择“Alter Schema…”选项，即可修改数据库指定的字符集，也可以删除数据库，在需要删除的数据库上右击，选择“Drop Schema…”

在 SCHEMAS 列表中展开需要创建表的数据库，在 Tables 菜单上右击，选择“Create Table…”在创建数据表的对话框中，在 Table Name 框中输入数据表的名称，在图中的方框部分编辑数据表的列信息，编辑完成后，单击 Apply 按钮，即可成功创建数据表,设置完成之后，可以预览当前操作的 SQL 脚本，然后单击 Apply 按钮，最后在下一个弹出的对话框中直接单击 Finish 按钮，即可完成数据表的创建，在 SCHEMAS 界面的 test_db 数据库中，在需要修改表结构的数据表上右击，选择“Alter Table…”选项，即可修改数据表的基本信息和数据表结构,也可以在 SCHEMAS 中的数据库的 Tables 列表中删除数据表，在需要删除的数据表上右击，选择“Drop Table…”







