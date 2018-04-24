setformat float, 0 
ImageNum = 6
StepNum = 9

loop, 40 {
	WinActivate,, Deconvolved
	;send {F2}
	;send ^c
	;var:=clipboard
	sleep 20
	send {Enter}
	sleep, 90000
	WinActivate,, SlideBook
	sleep 200
	loop, %StepNum%	{
		send {Down}
		sleep 20
	}
	loop, %ImageNum% {
		send ^i
		sleep 5000
		; getting cofactor data
			send {Tab}
			sleep 20
			send {Up 3}
			sleep 20
			send {Right 38}
			sleep 20
			send {Shift down}
				sleep 20
				send {Right 5}
				sleep 20
			send {Shift up}
			sleep 20
			send ^c
			sleep 20
			WinActivate Microsoft Excel
			sleep 20
			send ^v
			sleep 20
			WinActivate Image Info
			;send !{Tab}
			sleep 20
			send {Down}
			sleep 20
			send {Home}
			sleep 20
			Send {Right 37}
			sleep 20
			send {Shift down}
				sleep 20
				send {Right 5}
				sleep 20
			send {Shift up}
			sleep 20
			send ^c
			sleep 20
			WinActivate Microsoft Excel
			sleep 20
			send {Right}
			sleep 20
			send ^v
			sleep 20
			;WinActivate,, SlideBook
			WinActivate Image Info
			sleep 20
			send {Down}
			sleep 20
			send {End}  ;new addition to remove "actor"s
			sleep 20
			send {Left 8}
			sleep 20
			send {Shift down}
			sleep 20
				send {Right 5}
				sleep 20
			send {Shift up}
			sleep 20
			send ^c
			sleep 20
			WinActivate Microsoft Excel
			sleep 20
			send {Right}
			sleep 20
			send ^v
			sleep 20
			send {Left 5}
			sleep 20
			;WinActivate,, SlideBook
			WinActivate Image Info
			sleep 20
		; getting exposure times	
		sleep 200
		send {Tab 3}
		Send {Enter}
		sleep 5000
		send {Enter}
		sleep 20
			send {Tab 10}
			sleep 20
			send ^c
			sleep 20
			WinActivate Microsoft Excel
			sleep 20
			send ^v
			sleep 20
			;WinActivate,, SlideBook
			WinActivate Edit Info 
			sleep 20
			send {Tab 3}
			sleep 20
			send ^c
			sleep 20
			WinActivate Microsoft Excel
			sleep 20
			send {Right}
			sleep 20
			send ^v
			sleep 20
			;WinActivate,, SlideBook
			WinActivate Edit Info 
			sleep 20
			send {Tab 3}
			sleep 20
			send ^c
			sleep 20
			WinActivate Microsoft Excel
			sleep 20
			send {Right}
			sleep 20
			send ^v
			sleep 20
			send {Down}
			sleep 20
			send {Right}
			sleep 20
			;WinActivate,, SlideBook
			WinActivate Edit Info 
			sleep 20
			send !{F4}
			sleep 5000
			send !{F4}
			sleep 5000
			send {Down}
	}
	send ^{F4}
	sleep 30000
	WinActivate,, Deconvolved
	sleep, 20
	send {Down}
	sleep, 20
}

