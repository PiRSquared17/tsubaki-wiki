;�փE���L�F�C���X�g�[���X�N���v�g
;2011-05-05 yutaka kachi

#define MyAppName "�փE���L"
#define MyAppVersion "0.8"
#define MyAppPublisher "Yutaka Kachi"
#define MyAppURL "http://www.catch.jp/wiki/?tsubaki-wiki"
#define MyAppExeName "MyProg1.exe"
#define MyXampp "C:\xampp"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}DefaultDirName={#MyXampp}
DefaultGroupName={#MyAppName}
LicenseFile=license.txt
OutputBaseFilename=install_tsubaki-wiki
Compression=lzma
SolidCompression=yes
SourceDir=.\input
OutputDir=.\output

[Languages]
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese_tsubaki.isl"
[Tasks]
;�f�X�N�g�b�v�A�C�R���̒ǉ����A�C���X�g�[���E�B�U�[�h�Ŋm�F
;Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "cnako\*.*"; DestDir: "{app}\cnako"; Flags: ignoreversion recursesubdirs
Source: "httpd\*.*"; DestDir: "{app}\cnako\httpd"; Flags: ignoreversion recursesubdirs
Source: "tsubaki-wiki\*.*"; DestDir: "{app}\htdocs\tsubaki"; Flags: ignoreversion recursesubdirs

[Icons]
;��URL�ւ̃V���[�g�J�b�g��ǉ�Name: "{group}\{#MyAppName}"; Filename: "http://127.0.0.1/tsubaki/tsubaki-wiki.nako"
Name: "{group}\{#MyAppName}�̃A���C���X�g�[��"; Filename: "{uninstallexe}"

[Run]
;��httpd.conf�̃Z�b�g�A�b�v�v���O����Filename: "{app}\cnako\httpd\hdconf_setup.exe"; Parameters: "{app}\apache\conf"

