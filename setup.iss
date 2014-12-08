; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Windows Startup"
#define MyAppVersion "1.0.0.0"
#define MyAppPublisher "Kesoft Studio"
#define MyAppURL "kesoft.net"
#define MyAppExeName "kesoft.windowsstartup.tests.exe"

[Setup]
SetupIconFile=setup.ico
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{373DC099-73D1-43DB-B614-B2BE775BE59B}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
PrivilegesRequired=admin
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppPublisher}\{#MyAppName}
DefaultGroupName={#MyAppPublisher}\{#MyAppName}
OutputBaseFilename={#MyAppName}-{#MyAppVersion}
OutputDir=publish
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone

[Files]
Source: "sources\kesoft.windowsstartup.tests\bin\debug\*"; Excludes:"*.xml,*.pdb,\logs\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Registry]
;���ӿ���������ע�����
Root: HKLM; Subkey: SOFTWARE\Microsoft\Windows\CurrentVersion\Run; ValueType: string; ValueName: {#MyAppName}; ValueData: {app}\{#MyAppExeName}; Flags: uninsdeletevalue

[Run]
;���Ӱ�װ��ɺ�����������
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
