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
		Sleep(100)
		If _IsPressed("04", $dll) Then
			SoundPlay(@WindowsDir & "\media\tada.wav", 1)

			;ToolTip("WORKING", 0, 0)
			Sleep(Random(100, 150, 1))
			yellow()
		ElseIf _IsPressed("05", $dll) Then
			SoundPlay(@WindowsDir & "\media\tada.wav", 1)

			;ToolTip("WORKING", 0, 0)
			Sleep(Random(100, 150, 1))
			blue()
		EndIf
	WEnd
EndFunc   ;==>GO

yellow()
Func yellow()

	While 1
		Sleep(100)
		If _IsPressed("04", $dll) Then
			Beep(500, 600)

			;ToolTip("STOPPED", 0, 0)
			Sleep(Random(400, 500, 1))

			ExitLoop
		EndIf
		$npcpix = _ImageSearchArea("yello.png", 1, 824, 972, 869, 1018, $x1, $y1, 0)
		If $npcpix = 1 Then
			Send("w")
		EndIf
	WEnd

EndFunc   ;==>yellow
blue()
Func blue()

	While 1
		Sleep(100)
		If _IsPressed("05", $dll) Then
			Beep(500, 600)

			;ToolTip("STOPPED", 0, 0)
			Sleep(Random(400, 500, 1))

			ExitLoop
		EndIf
		$npcpix = _ImageSearchArea("blue.png", 1, 824, 972, 869, 1018, $x1, $y1, 0)
		If $npcpix = 1 Then
			Send("w")
		EndIf
	WEnd


EndFunc   ;==>blue





Func exitapp()
	Exit
EndFunc   ;==>exitapp



DllClose($dll)

