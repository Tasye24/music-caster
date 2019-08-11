; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Music Caster"
#define MyAppVersion "4.7.1"
#define MyAppPublisher "Elijah Lopez"
#define MyAppURL "https://elijahlopez.herokuapp.com/"
#define MyAppExeName "Music Caster.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{FBE8A652-58D6-482D-B6A9-B3D7931CC9C5}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
; Remove the following line to run in administrative install mode (install for all users.)
PrivilegesRequired=lowest
OutputDir={#SourcePath}\dist
OutputBaseFilename=Music Caster v{#MyAppVersion} Setup
; OutputBaseFilename=Music Caster Setup
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "{#SourcePath}\dist\Music Caster.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourcePath}\dist\Updater.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourcePath}\resources\default.png"; DestDir: "{app}\images"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
