; ===========================================================================
; Installation Instructions
; ===========================================================================
; Edit working directory ("C:\path\to\application folder\") to you application's path (line 14)
; Edit application.exe to your application's name (on lines 17 , 21 and 22)
; Either compile the ahk into an exe (on a seperate machine using the converter that comes with autohotkey) or install autohotkey (autohotkey.com)
; Place your ahk file or exe in the windows startup folder (ussually something like C:\Documents and Settings\(user)\Start Menu\Programs\Startup or <root>\Documents and Settings\(user)\Start Menu\Programs\Startup) 
; ===========================================================================
; Notes
; ===========================================================================
; Autohotkey creates an icon in the notification area bar. From here you can pause or stop the script from running. 
; Optionally you can edit how often the program checks to see if the program is running by editing the time(in milliseconds) on line 30

SetWorkingDir, C:\path\to\application folder\

;; If you need to do anything before shutdown (only tested on windows xp)
OnMessage(0x11, "WM_QUERYENDSESSION")

Loop
{
	Process, Exist, application.exe
		{
		If ! errorLevel
			{
			IfExist, application.exe
				Run,application.exe
			Return
			}
		else
			{
			Return
			}
		}
	Sleep 60000	
}

//On shutdown function
Return ;Ends furter execution section, incase breaking out of loop
WM_QUERYENDSESSION()
{


   ;;Do what you gotta do
   Process Close, graffiti-wall.exe

   ;;Sleep so it gets so apps get time to do stuff....
   Sleep 1000
      

}

Return ;; Done!
