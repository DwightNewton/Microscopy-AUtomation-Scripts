;Written by Dwight Newton, May 2018
;Last Updated: May 15th, 2018


;ensure excel cursor is at right point
InputBox, LoopNum,, How many image files do you have to process?
InputBox, ImageNum,, How many images do you have per image file?


loop, %LoopNum%
{
	StepNum:= ImageNum + 2 ; ":=" is needed to declare the variable as a number
	WinActivate,, Deconvolved
		sleep 10
		send {Enter}
		sleep 60000
	WinActivate,, Slidebook
		sleep 10
		loop, %ImageNum%
		{
			Send {Home}
			loop, %StepNum%
			{
				send {Down}
				sleep 10
			}
			send ^j
			sleep 100
			send {Enter}
			sleep 2000
			StepNum := StepNum + 2
		}
		StepNum := ImageNum + 3
		loop, %ImageNum%
		{	
			sleep 100
			Send {Home}
			loop, %StepNum%
			{
				send {Down}
				sleep 10
			}
				send ^k
				sleep 100
				send !+u ; opens lookup table
				sleep 100
				Control, ChooseString, 405, ComboBox1, Renormalize ;selects the 405 channel
				sleep 100
				send {Tab 2}
				sleep 100
			WinActivate Microsoft Excel ;cursor set to 405 image threshold
				sleep 100
				send ^c
				sleep 100
			WinActivate Renormalize
				sleep 100
				send ^v
				sleep 100
				send {Tab 3}
				sleep 100
				send {Enter}
				sleep 100
				send {Tab 6}
				sleep 100
				Control, ChooseString, 488, ComboBox1, Renormalize ; selects 488 channel
				sleep 100
				send {Tab 2}
				sleep 100
			WinActivate Microsoft Excel
				sleep 100
				send {Right}
				sleep 100
				send ^c
				sleep 100
			WinActivate Renormalize
				sleep 100
				send ^v
				sleep 100
				send {Tab 3}
				sleep 100
				send {Enter}
				sleep 100
				send {Tab 6}
				sleep 100
				Control, ChooseString, 568, ComboBox1, Renormalize ; selects the 568 channel
				sleep 100
				send {Tab 2}
				sleep 100
			WinActivate Microsoft Excel
				sleep 100
				send {Right}
				sleep 100
				send ^c
				sleep 100
				send {Down}
				sleep 100
				send {Left}
				sleep 100
				send {Left}
				sleep 100
			WinActivate Renormalize
				sleep 100
				send ^v
				sleep 100
				send {Tab 3}
				sleep 100
				send {Enter}
				sleep 100
				send !{F4}
				sleep 100
				ControlClick Button4, A ; Clicks the "Thumb" button, saving these changes
				sleep 100
				WinActivate,, Blind.Project Maximum Z]
				sleep 100
				send ^{F4}
				sleep 100
				StepNum := StepNum + 2
		}
	sleep 1000
	send ^{F4}
	sleep 1000
	send {Enter}
	sleep 5000
	WinActivate,, Deconvolved
	sleep 1000
	send {Down}
}
Esc::ExitApp
