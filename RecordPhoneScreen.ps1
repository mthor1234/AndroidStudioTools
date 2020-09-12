# Get its PID
#PID=$!

# Upon a key press
#read -p "Press [Enter] to stop recording..."

#$fileName = Read-Host -Prompt 'Name Your Recording'
#
#adb shell screenrecord /sdcard/$fileName.mp4 --time-limit 10
#
## Kills the recording process
##kill $PID
#
#Start-Sleep -s 3
#
#
#adb shell screenrecord /sdcard/SecondRecording.mp4 --time-limit 10
#
#
#if ($fname -eq "Ctrl-X") {
#    .\menu.ps1
#}
#
#adb pull /sdcard/$fileName.mp4

Write-Host "--Android Tester Suite 1.0--"
#    $fileName = Read-Host -Prompt 'Name Your Recording'
$fileName = Read-Host 'Name Your Recording'

$process
$choice = Read-Host -Prompt "Press 1 to quit"

if (Read-Host "Press 1 to quit") {
    do {
        "Starting Recording"

        $process = adb shell screenrecord /sdcard/$fileName.mp4 --time-limit 10

        # Kills the recording process
        #kill $PID

        #Sleep for 1050 milliseconds
        Start-Sleep -m 10050

        "Ending Recording... Beginning to Overwrite"
    }
    until ($choice -eq "1")


}

##Main
#do
#{
#    Write-Host "--Android Tester Suite 1.0--"
##    $fileName = Read-Host -Prompt 'Name Your Recording'
#    $fileName = Read-Host 'Name Your Recording'
#
#    $process
#    $choice = Read-Host -Prompt "Press 1 to quit"
#
#    while($true){
#
#        "Starting Recording"
#
#        $process = adb shell screenrecord /sdcard/$fileName.mp4 --time-limit 10
#
#        # Kills the recording process
#        #kill $PID
#
#        #Sleep for 1050 milliseconds
#        Start-Sleep -m 10050
#
#        "Ending Recording... Beginning to Overwrite"
#    }
#
#    "Saving the file: $fileName to your computer"
#
#
#    Stop-Process $process
#
#    #Sleep to allow for video to process before pulling
#    Start-Sleep -m 1050
#
#
#    adb pull /sdcard/$fileName.mp4
#
#    #Give time to pull the file
#    Start-Sleep -m 5000
#
#    exit
#
#
#} until ($choice -eq 1)
#
#
#"Saving the file: $fileName to your computer"
#
#
#Stop-Process $process
#
##Sleep to allow for video to process before pulling
#Start-Sleep -m 1050
#
#
#adb pull /sdcard/$fileName.mp4
#
##Give time to pull the file
#Start-Sleep -m 5000
#
#exit




#AD Query for computer
#    switch ($choice)
#    {
#        1 {
#            Write-Host "--Enter first five characters of computer name or full computer name i.e.     USCLT--"
#            $cn = Read-Host 'Computer name'
#            $out = "$cn*"
#            Get-ADComputer -Filter 'SamAccountName -like $out' >> c:\myscripts\dsquery.txt
#            Write-Host "Query complete.  See dsquery.txt saved to Desktop."
#        }
#    }