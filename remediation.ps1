# PowerShell script to enable signature validation for WinVerifyTrust vulnerability

# Define the registry key and value
$regPath = "HKLM\Software\Microsoft\Cryptography\Wintrust\Config"
$regKey = "EnableCertPaddingCheck"
$regValue = 1

# Modify the registry to enable strict signature validation
Set-ItemProperty -Path $regPath -Name $regKey -Value $regValue -Type DWord
Write-Host "Signature validation has been enabled."

# Verify the registry value
$verifyValue = Get-ItemProperty -Path $regPath -Name $regKey
Write-Host "Current value of EnableCertPaddingCheck: $($verifyValue.$regKey)"
