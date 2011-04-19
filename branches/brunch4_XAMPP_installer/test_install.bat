rem デプロイ用スクリプト
rem 2010-08-29 xcopyを採用

copy tsubaki-wiki.nako C:\xampp\htdocs\tsubaki
copy tsubaki-config.nako C:\xampp\htdocs\tsubaki
copy main.nako C:\xampp\htdocs\tsubaki
copy lib.nako C:\xampp\htdocs\tsubaki
copy lib_api.nako C:\xampp\htdocs\tsubaki
copy lib_command.nako C:\xampp\htdocs\tsubaki
copy lib_wiki_tags.nako C:\xampp\htdocs\tsubaki
copy lib_html_generate.nako C:\xampp\htdocs\tsubaki
copy plugins_list*.nako C:\xampp\htdocs\tsubaki
copy plugins_call*.nako C:\xampp\htdocs\tsubaki

erase /q C:\xampp\htdocs\tsubaki\home\*.*
xcopy home C:\xampp\htdocs\tsubaki\home\ /s /e /c /h /r /k /y /v /f
erase /q C:\xampp\htdocs\tsubaki\theme\*.*
xcopy theme C:\xampp\htdocs\tsubaki\theme\ /s /e /c /h /r /k /y /v /f
erase /q C:\xampp\htdocs\tsubaki\plugins\*.*
xcopy plugins C:\xampp\htdocs\tsubaki\plugins\ /s /e /c /h /r /k /y /v /f 
copy tsubaki-wiki.png C:\xampp\htdocs\tsubaki

erase /q C:\xampp\htdocs\tsubaki\test\*.*
xcopy test\selenium\*.* C:\xampp\htdocs\tsubaki\test\selenium\ /s /e /c /h /r /k /y /v /f 

cd C:\selenium-remote-control-1.0.3\selenium-server-1.0.3
java -jar selenium-server.jar -htmlSuite "*firefox" "http://127.0.0.1/tsubaki/tsubaki-wiki.nako"  "C:\xampp\htdocs\tsubaki\test\selenium\tsubaki-wiki_test_suite.html" "C:\xampp\htdocs\tsubaki\test\selenium\result.html"