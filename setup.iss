[Setup]
AppName=Hollow Knight: Silksong by StormGamesStudios
AppVersion=1.0.3
DefaultDirName={userappdata}\StormGamesStudios\NewGameDir\HollowKnightSilksong
DefaultGroupName=StormGamesStudios
OutputDir=C:\Users\mapsp\Documents\GitHub\hollow_knight_silksong\output
OutputBaseFilename=ContentWarning_Launcher_Installer
Compression=lzma
SolidCompression=yes
AppCopyright=Copyright © 2025 StormGamesStudios. All rights reserved.
VersionInfoCompany=StormGamesStudios
AppPublisher=StormGamesStudios
SetupIconFile=hollow_knight_silksong.ico
VersionInfoVersion=1.0.3.0
DisableDirPage=yes
DisableProgramGroupPage=yes

[Files]
; Archivos del lanzador
Source: "C:\Users\mapsp\Documents\GitHub\hollow_knight_silksong\dist\installer_updater.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\mapsp\Documents\GitHub\hollow_knight_silksong\hollow_knight_silksong.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\mapsp\Documents\GitHub\hollow_knight_silksong\hollow_knight_silksong.png"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
; Acceso directo en el escritorio
Name: "{userdesktop}\Hollow Knight: Silksong"; Filename: "{app}\installer_updater.exe"; IconFilename: "{app}\hollow_knight_silksong.ico"

; Acceso directo en el menú de inicio dentro de la carpeta StormLauncher_HMCL-Edition
Name: "{commonprograms}\StormGamesStudios\Hollow Knight: Silksong"; Filename: "{app}\installer_updater.exe"; IconFilename: "{app}\hollow_knight_silksong.ico"
Name: "{commonprograms}\StormGamesStudios\Desinstalar Hollow Knight: Silksong"; Filename: "{uninstallexe}"; IconFilename: "{app}\hollow_knight_silksong.ico"

[Registry]
; Guardar ruta de instalación para poder desinstalar
Root: HKCU; Subkey: "Software\Hollow Knight: Silksong"; ValueType: string; ValueName: "Install_Dir"; ValueData: "{app}"

[UninstallDelete]
; Eliminar carpeta del appdata y acceso directo
Type: filesandordirs; Name: "{app}"

[Run]
; Ejecutar el lanzador después de la instalación
Filename: "{app}\installer_updater.exe"; Description: "Ejecutar Hollow Knight: Silksong"; Flags: nowait postinstall skipifsilent
