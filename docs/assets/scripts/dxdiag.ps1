# Check if the script is running with administrative privileges
if (-Not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] 'Administrator')) {
    # Check if the operating system build version is greater than or equal to 6000
    if ([int](Get-CimInstance -Class Win32_OperatingSystem | Select-Object -ExpandProperty BuildNumber) -ge 6000) {
        # Assemble the command line to relaunch the script with elevated privileges
        $CommandLine = "-File `"" + $MyInvocation.MyCommand.Path + "`" " + $MyInvocation.UnboundArguments
        # Start a new PowerShell process with the RunAs (elevated) verb and pass the assembled command line
        Start-Process -FilePath PowerShell.exe -Verb Runas -ArgumentList $CommandLine
        # Exit the current (non-elevated) script and focus on the newly opened administrative one
        Exit
    }
}

# Generate a timestamp, `Timestamp`, in the format of day, month, year (ddMMyy)
$Timestamp = Get-Date -Format "ddMMyy"
# Set `ScriptDirectory` to the directory that the script is stored in (`PSScriptRoot`)
$ScriptDirectory = $PSScriptRoot
# Fetch the hostname of the system and store it in the `Hostname` variable
$Hostname = hostname
# Set the name of the log file with hostname and timestamp in the script directory
$LogFile = Join-Path -Path $ScriptDirectory -ChildPath "$Hostname-HWInfo_$Timestamp.txt"

# Display a message indicating that DXDiag is being run
Write-Host "Running DXDiag..."

# Run DXDiag and save the output to the specified log file and path defined in `LogFile`
& dxdiag /t $LogFile

# Check if the log file exists, wait until it is created
while (-not (Test-Path $LogFile)) {
    Write-Host -NoNewline "."
    Start-Sleep -Seconds 1
}

# Add a new line after the dots
Write-Host ""

# Get the full path of the log file
$FullPath = (Get-Item $LogFile).FullName

# Display the full path to the user
Write-Host "DXDiag completed. System information saved to:`n$FullPath"

# Pause the script to keep the console window open for the user to read messages
Pause