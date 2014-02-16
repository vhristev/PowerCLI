@ECHO OFF
     
set varip=192.168.100.10
set varsm=255.255.255.224
set vargw=192.168.100.1
set vardns1=66.78.202.254
set vardns2=66.78.210.254
     
ECHO Setting IP Address and Subnet Mask
netsh int ip set address name = "Local Area Connection" source = static addr = %varip% mask = %varsm%
     
ECHO Setting Gateway
netsh int ip set address name = "Local Area Connection" gateway = %vargw% gwmetric = 1
     
ECHO Setting Primary DNS
netsh int ip set dns name = "Local Area Connection" source = static addr = %vardns1%
     
ECHO Setting Secondary DNS
netsh int ip add dns name = "Local Area Connection" addr = %vardns2%
        
ECHO Here are the new settings for %computername%:
netsh int ip show config
     
pause

