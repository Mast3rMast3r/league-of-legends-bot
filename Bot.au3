;#RequireAdmin
#include <ImageSearch.au3>
#include <Misc.au3>
#include <Sound.au3>

HotKeySet("{f1}", "exitapp")
$dll = DllOpen("user32.dll")

$x1 = 0
$y1 = 0

;Sleep(2000)
GO()
Func GO()
	While 1
		Sleep(50)
		If _IsPressed("04", $dll) Then
			SoundPlay("yellow.mp3", 1)
			Sleep(Random(40, 70, 1))
			yellow()
		ElseIf _IsPressed("06", $dll) Then
			SoundPlay("blue.mp3", 1)
			Sleep(Random(40, 70, 1))
			blue()
		ElseIf _IsPressed("05", $dll) Then
			SoundPlay("red.mp3", 1)
			Sleep(Random(40, 70, 1))
			red()
		EndIf
	WEnd
EndFunc   ;==>GO

yellow()
Func yellow()

	While 1
		Sleep(20)
		If _IsPressed("04", $dll) Then
			SoundPlay(@WindowsDir & "\media\Windows Foreground.wav", 1)

			;ToolTip("STOPPED", 0, 0)
			Sleep(Random(40, 70, 1))

			ExitLoop
		EndIf
		$npcpix = _ImageSearchArea("yello.png", 1, 824, 972, 869, 1018, $x1, $y1, 0)
		If $npcpix = 1 Then
			Send("w")
		EndIf
		If _IsPressed("06", $dll) Then
			SoundPlay("blue.mp3", 1)

			blue()
			ExitLoop

		EndIf
		If _IsPressed("05", $dll) Then
			SoundPlay("red.mp3", 1)

			red()
			ExitLoop
		EndIf
	WEnd

EndFunc   ;==>yellow
blue()
Func blue()

	While 1
		Sleep(20)
		If _IsPressed("06", $dll) Then
			SoundPlay(@WindowsDir & "\media\Windows Foreground.wav", 1)
			;ToolTip("STOPPED", 0, 0)
			Sleep(Random(100, 130, 1))

			ExitLoop
		EndIf
		$npcpix = _ImageSearchArea("blue.png", 1, 824, 972, 869, 1018, $x1, $y1, 0)
		If $npcpix = 1 Then
			Send("w")
		EndIf
		If _IsPressed("04", $dll) Then
			SoundPlay("yellow.mp3", 1)

			yellow()
			ExitLoop
		EndIf
		If _IsPressed("05", $dll) Then
			SoundPlay("red.mp3", 1)

			red()
			ExitLoop
		EndIf
	WEnd


EndFunc   ;==>blue
red()
Func red()

	While 1
		Sleep(20)
		If _IsPressed("05", $dll) Then
			SoundPlay(@WindowsDir & "\media\Windows Foreground.wav", 1)

			;ToolTip("STOPPED", 0, 0)
			Sleep(Random(100, 130, 1))

			ExitLoop
		EndIf
		$npcpix = _ImageSearchArea("red.png", 1, 824, 972, 869, 1018, $x1, $y1, 0)
		If $npcpix = 1 Then
			Send("w")
		EndIf
		If _IsPressed("04", $dll) Then
			SoundPlay("yellow.mp3", 1)

			yellow()
			ExitLoop
		EndIf
		If _IsPressed("06", $dll) Then
			SoundPlay("blue.mp3", 1)

			blue()
			ExitLoop
		EndIf

	WEnd


EndFunc   ;==>red





Func exitapp()
	Exit
EndFunc   ;==>exitapp



DllClose($dll)

