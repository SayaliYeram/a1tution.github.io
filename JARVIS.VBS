Dim msg, sapi
msg-inputBox("Enter your text","Talk it")
Set sapi=CreateObject("sapi.spvoice")
sapi.speak msg