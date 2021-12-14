cls
@echo off
color 2
echo *******************************************************************************
color 3
echo **                              Be Name Khoda                                **
echo **                                 MODAFE                                    **
echo **                     Defend By Registery Version 0.1                       **
echo **                      Payamnoor University Persent                         **
color 4
echo *******************************************************************************
echo.
color 7 

:HelpList
set /A nocls=NO 
echo Help         [?]
echo View of Key  [V]
echo List of Key  [L]
echo Exit         [E]
echo.
set /p cmd=Please Enter Command:
if %cmd% EQU ? ( goto HelpList)
if %cmd% EQU v ( goto ViewQueryMenu)
if %cmd% EQU L ( goto ListKeysMenu)
if %cmd% EQU E ( goto END)

:ViewQueryMenu
if %nocls% EQU YES ( cls )
echo Please Enter Query of Keys with Format compress
echo Like HKU for HKey_Users
echo.
set /p key=Please Enter Key:
if %key% EQU ? ( goto HelpList)
if %key% EQU v ( goto ViewQueryExecute)
else goto ViewQueryMenu

:ViewQueryExecute
cls
REG QUERY %key%
set /A nocls=YES
goto ViewQueryMenu


:ListKeysMenu
if %nocls% EQU YES ( cls )
echo NoControlPanel             [1]
echo NoRun                      [2]
echo DisableChangePassword      [3]
echo NoProgramsAndFeatures      [4]
echo NoDrives                   [5]
echo DisableRegistryTools       [6]
echo DisableCMD                 [7]
echo DisableTaskMgr             [8]
echo NoDriveTypeAutoRun         [9]
echo NoWindowsFeatures          [10]
echo Disable Flash USB          [11]
echo NoInstalledUpdates         [12]
echo EnableFirewall             [13]
echo NoChangingWallPaper        [14]
echo LegalNoticeText            [15-1]
echo LegalNoticeCaption         [15-2]
echo.
set /p key=Please Enter Number:
set /p ADDDEL=DO U WANT KEY [ADD OR DELETE]:
if %key% EQU ? ( goto HelpList)
if %key% EQU 1 ( goto KeyExecute1)
if %key% EQU 2 ( goto KeyExecute2)
if %key% EQU 3 ( goto KeyExecute3)
if %key% EQU 4 ( goto KeyExecute4)
if %key% EQU 5 ( goto KeyExecute5)
if %key% EQU 6 ( goto KeyExecute6)
if %key% EQU 7 ( goto KeyExecute7)
if %key% EQU 8 ( goto KeyExecute8)
if %key% EQU 9 ( goto KeyExecute9)
if %key% EQU 10 ( goto KeyExecute10)
if %key% EQU 11 ( goto KeyExecute11)
if %key% EQU 12 ( goto KeyExecute12)
if %key% EQU 13 ( goto KeyExecute13)
if %key% EQU 14 ( goto KeyExecute14)
if %key% EQU 15-1 ( goto KeyExecute15-1)
if %key% EQU 15-2 ( goto KeyExecute15-2)

else goto ViewQueryMenu

:KeyExecute1
cls
echo.
echo %ADDDEL%
if %ADDDEL% EQU  DELETE REG DELETE  "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V NoControlPanel 
if %ADDDEL% EQU  ADD REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V NoControlPanel /T REG_DWORD /D "1" 
REG QUERY "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer"
set /p go=Please Next read result type go:
set /A nocls=YES
if %go% EQU go (goto ListKeysMenu)
:KeyExecute2
cls
if %ADDDEL% EQU  ADD REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V NoRun /T REG_DWORD /D "1" 
if %ADDDEL% EQU  DELETE REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V NoRun
REG QUERY "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer"
set /p go=Please Next read result type go:
set /A nocls=YES
if %go% EQU go (goto ListKeysMenu)

:KeyExecute3
cls
if %ADDDEL% EQU  DELETE REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /V DisableChangePassword
if %ADDDEL% EQU  ADD REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /V DisableChangePassword /T REG_DWORD /D "1" 
REG QUERY "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System"
set /p go=Please Next read result type go:
set /A nocls=YES
if %go% EQU go (goto ListKeysMenu)
:KeyExecute4
cls
if %ADDDEL% EQU  ADD REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Programs" /V NoProgramsAndFeatures /T REG_DWORD /D "1" 
if %ADDDEL% EQU  DELETE REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Programs" /V NoProgramsAndFeatures  
REG QUERY "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Programs"
set /p go=Please Next read result type go:
set /A nocls=YES
if %go% EQU go (goto ListKeysMenu)
:KeyExecute5
cls
if %ADDDEL% EQU  ADD REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V NoDrives /T REG_DWORD /D "3ffffff" 
if %ADDDEL% EQU  DELETE REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V NoDrives 
REG QUERY "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer"
set /p go=Please Next read result type go:
set /A nocls=YES
if %go% EQU go (goto ListKeysMenu)
:KeyExecute6
cls
if %ADDDEL% EQU  ADD REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /V DisableRegistryTools /T REG_DWORD /D "2" 
if %ADDDEL% EQU  DELETE REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /V DisableRegistryTools  
REG QUERY "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System"
set /p go=Please Next read result type go:
set /A nocls=YES
if %go% EQU go (goto ListKeysMenu)
:KeyExecute7
cls
if %ADDDEL% EQU  ADD REG ADD "HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\System" /V DisableCMD /T REG_DWORD /D "1" 
if %ADDDEL% EQU  DELETE REG DELETE "HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\System" /V DisableCMD 
REG QUERY "HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\System"
set /p go=Please Next read result type go:
set /A nocls=YES
if %go% EQU go (goto ListKeysMenu)
:KeyExecute8
cls
if %ADDDEL% EQU  ADD REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /V DisableTaskMgr /T REG_DWORD /D "1" 
if %ADDDEL% EQU  DELETE REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /V DisableTaskMgr 
REG QUERY "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System"
set /p go=Please Next read result type go:
set /A nocls=YES
if %go% EQU go (goto ListKeysMenu)
:KeyExecute9
cls
if %ADDDEL% EQU  ADD REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V NoDriveTypeAutoRun /T REG_DWORD /D "ff" 
if %ADDDEL% EQU  DELETE REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V NoDriveTypeAutoRun 
REG QUERY "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer"
set /p go=Please Next read result type go:
set /A nocls=YES
if %go% EQU go (goto ListKeysMenu)
:KeyExecute10
cls
if %ADDDEL% EQU  ADD REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V NoWindowsFeatures /T REG_DWORD /D "1" 
if %ADDDEL% EQU  DELETE REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /V NoWindowsFeatures
REG QUERY "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer"
set /p go=Please Next read result type go:
set /A nocls=YES
if %go% EQU go (goto ListKeysMenu)
:KeyExecute11
cls
if %ADDDEL% EQU  ADD REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Programs" /V Start /T REG_DWORD /D "4" 
if %ADDDEL% EQU  DELETE REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Programs" /V Start /T REG_DWORD /D "3" 

REG QUERY "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Programs"
set /p go=Please Next read result type go:
set /A nocls=YES
if %go% EQU go (goto ListKeysMenu)
:KeyExecute12
cls
if %ADDDEL% EQU  ADD REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Programs" /V NoInstalledUpdates /T REG_DWORD /D "1" 
if %ADDDEL% EQU  DELETE REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Programs" /V NoInstalledUpdates 
set /A nocls=YES
goto ViewQueryMenu
:KeyExecute13
cls
if %ADDDEL% EQU  ADD REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile" /V EnableFirewall /T REG_DWORD /D "1" 
if %ADDDEL% EQU  DELETE REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile" /V EnableFirewall 
REG QUERY "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile"
set /p go=Please Next read result type go:
set /A nocls=YES
if %go% EQU go (goto ListKeysMenu)
:KeyExecute14
cls
if %ADDDEL% EQU  ADD REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\ActiveDesktop" /V NoChangingWallPaper /T REG_DWORD /D "1" 
if %ADDDEL% EQU  DELETE REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\ActiveDesktop" /V NoChangingWallPaper 
REG QUERY "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\ActiveDesktop"
set /p go=Please Next read result type go:
set /A nocls=YES
if %go% EQU go (goto ListKeysMenu)
:KeyExecute15-1
cls
if %ADDDEL% EQU  ADD REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /V LegalNoticeText /T REG_SZ /D "Warning!" 
if %ADDDEL% EQU  DELETE REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /V LegalNoticeText 
REG QUERY "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon"
set /p go=Please Next read result type go:
set /A nocls=YES
if %go% EQU go (goto ListKeysMenu)
:KeyExecute15-2
cls
if %ADDDEL% EQU  ADD REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /V LegalNoticeCaption /T REG_SZ /D "this computer,The Modafe executed" 
if %ADDDEL% EQU  DELETE REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /V LegalNoticeCaption 
REG QUERY "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon"
set /p go=Please Next read result type go:
set /A nocls=YES
if %go% EQU go (goto ListKeysMenu)



:END
echo goodbye ;)