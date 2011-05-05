;椿ウヰキ：インストーラスクリプト

#define MyAppName "椿ウヰキ"
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
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}DefaultDirName={#MyXampp}
;DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
LicenseFile=license.txt
;InfoAfterFile=hdconf_setup.exe "{#MyXampp}"
OutputBaseFilename=install_tsubaki-wiki
Compression=lzma
SolidCompression=yes
;以下に、ソースファイルのフォルダパスを指定
;SourceDir=c:\files
SourceDir=.\input

[Languages]
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese_tsubaki.isl"

;[Tasks]
;デスクトップアイコンの追加を、インストールウィザードで確認
;Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
;●なでしこをコピー
Source: "cnako\*.*"; DestDir: "{app}\cnako"; Flags: ignoreversion recursesubdirs
;●椿ウヰキをコピー
;Source: "MyProg1.exe"; DestDir: "{app}"; Flags: ignoreversion
;Source: "MyProg2.exe"; DestDir: "{app}"; Flags: ignoreversion
;Source: "MyProg3.exe"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
;●URLへのショートカットを追加
;Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{#MyAppName}のアンインストール"; Filename: "{uninstallexe}"
;デスクトップアイコンの追加
;Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
;●httpd.confのセットアッププログラム
;Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, "&", "&&")}}"; Flags: nowait postinstall skipifsilent

