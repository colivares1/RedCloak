net use y: $env:nas_path\CGOAnsible$ /user:$env:mount_username $env:mount_password /persistent:no
xcopy y:\RedCloak\redcloak.msi  c:\temp\redcloak\ /s /e 
net use y: /d 
msiexec /i c:\temp\redcloak\redcloak.msi /quiet /qn
Start-Sleep 180