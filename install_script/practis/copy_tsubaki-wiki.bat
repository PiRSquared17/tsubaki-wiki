rem インストーラ作成用スクリプト - 椿ウヰキをコピー
rem 2011-05-02：新規作成

copy ..\tsubaki-wiki.nako input\tsubaki-wiki
copy ..\tsubaki-config.nako input\tsubaki-wiki
copy ..\main.nako input\tsubaki-wiki
copy ..\lib.nako input\tsubaki-wiki
copy ..\lib_api.nako input\tsubaki-wiki
copy ..\lib_command.nako input\tsubaki-wiki
copy ..\lib_wiki_tags.nako input\tsubaki-wiki
copy ..\lib_html_generate.nako input\tsubaki-wiki
copy ..\plugins_list*.nako input\tsubaki-wiki
copy ..\plugins_call*.nako input\tsubaki-wiki
copy ..\tsubaki-wiki.png input\tsubaki-wiki

erase /q input\tsubaki-wiki\home\*.*
xcopy ..\home input\tsubaki-wiki\home\ /s /e /c /h /r /k /y /v /f
erase /q input\tsubaki-wiki\theme\*.*
xcopy ..\theme input\tsubaki-wiki\theme\ /s /e /c /h /r /k /y /v /f
erase /q input\tsubaki-wiki\plugins\*.*
xcopy ..\plugins input\tsubaki-wiki\plugins\ /s /e /c /h /r /k /y /v /f 

pause
