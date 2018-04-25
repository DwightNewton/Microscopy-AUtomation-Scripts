```AUtoHotkey
inputbox, var,, How many Slidebook files do you have to process?

Loop, %var%
{
	WinActivate,, Deconvolved
		sleep, 200
		send {Enter}
		sleep, 90000
	WinActivate,, SlideBook
		sleep, 200
		send {Down}
		sleep, 100
		send {Down}
		sleep, 100
		send {Down}
		sleep, 100
		send !9
		sleep, 100
		send {Tab 8}
		sleep, 100
		send 2
		sleep, 100
		send 0
		sleep, 100
		send {Tab}
		sleep, 100
		send {Down}
		sleep, 100
		send {Down}
		sleep, 100
		send {Tab}
		sleep, 1000
		send {Enter}
			Loop, 12 ;waits for one hour, while preventing the computer from locking
			{
				sleep, 300000
				send {LWin}
			}
	WinActivate,, SlideBook
		sleep, 100
		send ^{F4}
		sleep, 2000
		send {Enter}
		sleep, 60000
	WinActivate,, Deconvolved
		sleep, 10
		send {Down}
		sleep, 10
}
```

