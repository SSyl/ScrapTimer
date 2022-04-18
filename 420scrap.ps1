$scrapTime = Get-Date "4-1-2001 3:50 AM"; # Initial time that there was a scrap drop in the past.
$timeNow = [System.TimeZoneInfo]::ConvertTimeBySystemTimeZoneId([DateTime]::now, "Central Standard Time"); # Get the current time in the US Central Time Zone. It has to be in this timezone to work.

while ($timeNow -gt $scrapTime) {
    # While current time is greater than upcoming scrap time add 4 hours and 20 minutes
    $scrapTime = $scrapTime.AddHours(4).AddMinutes(20);  
}

# Difference between the next scrop drop and current time
$timeDiff = $scrapTime - $timeNow.AddMinutes(-1);

$hours = $timeDiff.Hours;
$minutes = $timeDiff.Minutes;

# Format scrap time to hours:minutes AM/PM
$scrapTime = Get-Date $scrapTime -Format "h:mm tt";


# Copy to Clipboard
if ($hours -ge 1) {
    Set-Clipboard -Value "chat.say `"420 scrap drops in ${hours}h${minutes}m at $scrapTime (Central Time)`"";
}
else {
    Set-Clipboard -Value "chat.say `"420 scrap drops in ${minutes}m at $scrapTime (Central Time)`"";
}

[void] [System.Reflection.Assembly]::LoadWithPartialName("'Microsoft.VisualBasic")
if ([Microsoft.VisualBasic.Interaction]::AppActivate("Rust")) {
    [void] [System.Reflection.Assembly]::LoadWithPartialName("'System.Windows.Forms")
    [System.Windows.Forms.SendKeys]::SendWait("{F1}");
    Start-Sleep -Milliseconds 50 # It takes a few miliseconds to actually grab the content from the clipboard. Without this, it fails at pasting. Might need to increase the value depending on system performance.
    [System.Windows.Forms.SendKeys]::SendWait("^v");
    [System.Windows.Forms.SendKeys]::SendWait("~");
    [System.Windows.Forms.SendKeys]::SendWait("{F1}");
}

# The above uses VisualBasic and the built in System.Windows.Forms assemblies, but it's also possible to do this using wscript.shell. It's not as graceful, but it works. 

#$wshell = New-Object -ComObject wscript.shell;

#$wshell.AppActivate("Rust");
#$wshell.SendKeys('{F1}'); # Open Console
#System.Threading.Thread.Sleep(1); # You generally shouldn't use System.Threading.Thread.Sleep(). I'm not sure why, but that seems to be the general consensus.
#$wshell.SendKeys("^v"); # Ctrl + V
#$wshell.SendKeys("~"); # Enter Key
#$wshell.SendKeys('{F1}'); # Close Console