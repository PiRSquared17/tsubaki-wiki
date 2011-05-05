;�փE���L�F�C���X�g�[���X�N���v�g

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
;�ȉ��ɁA�\�[�X�t�@�C���̃t�H���_�p�X���w��
;SourceDir=c:\files
SourceDir=.\input

[Languages]
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese_tsubaki.isl"

;[Tasks]
;�f�X�N�g�b�v�A�C�R���̒ǉ����A�C���X�g�[���E�B�U�[�h�Ŋm�F
;Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
;���Ȃł������R�s�[
Source: "cnako\*.*"; DestDir: "{app}\cnako"; Flags: ignoreversion recursesubdirs
;���փE���L���R�s�[
;Source: "MyProg1.exe"; DestDir: "{app}"; Flags: ignoreversion
;Source: "MyProg2.exe"; DestDir: "{app}"; Flags: ignoreversion
;Source: "MyProg3.exe"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
;��URL�ւ̃V���[�g�J�b�g��ǉ�
;Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{#MyAppName}�̃A���C���X�g�[��"; Filename: "{uninstallexe}"
;�f�X�N�g�b�v�A�C�R���̒ǉ�
;Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
;��httpd.conf�̃Z�b�g�A�b�v�v���O����
;Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, "&", "&&")}}"; Flags: nowait postinstall skipifsilent

