rem �C���X�g�[���쐬�p�X�N���v�g - �Ȃł������R�s�[
rem 2011-05-02�F�V�K�쐬


erase /q input\cnako\*.*
copy "C:\Program Files\nadesiko_lang\cnako.exe" input\cnako
copy "C:\Program Files\nadesiko_lang\license.txt" input\cnako

erase /q input\cnako\lib\*.*
xcopy "C:\Program Files\nadesiko_lang\lib" input\cnako\lib /s /e /c /h /r /k /y /v /f
erase /q input\cnako\plug-ins\*.*
xcopy "C:\Program Files\nadesiko_lang\plug-ins" input\cnako\plug-ins /s /e /c /h /r /k /y /v /f



