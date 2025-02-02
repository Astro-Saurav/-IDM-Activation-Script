# Enable TLSv1.2 for security
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# Corrected RAW file URL
$DownloadURL = 'https://raw.githubusercontent.com/Astro-Saurav/IDM-Activation-Script/main/IAS.cmd'

# Generate a random filename
$rand = Get-Random -Maximum 99999999
$isAdmin = [bool]([Security.Principal.WindowsIdentity]::GetCurrent().Groups -match 'S-1-5-32-544')
$FilePath = if ($isAdmin) { "$env:SystemRoot\Temp\IAS_$rand.cmd" } else { "$env:TEMP\IAS_$rand.cmd" }

# Try downloading the file
try {
    $response = Invoke-WebRequest -Uri $DownloadURL -UseBasicParsing
} catch {
    Write-Host "Failed to download the script. Check the URL!"
    exit
}

# Save the script and execute it
Set-Content -Path $FilePath -Value $response.Content
Start-Process -FilePath $FilePath -Wait

# Cleanup
Remove-Item -Path $FilePath -Force
