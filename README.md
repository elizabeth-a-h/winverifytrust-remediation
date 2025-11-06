# WinVerifyTrust Signature Validation Remediation

## Objective
This remediation addresses the WinVerifyTrust vulnerability on Windows systems by configuring registry settings to enforce strict validation of digital signatures.

## Remediation Steps
1. Modify the registry to enable signature validation:

   ```powershell
   Set-ItemProperty -Path "HKLM\Software\Microsoft\Cryptography\Wintrust\Config" `
     -Name "EnableCertPaddingCheck" -Value 1 -Type DWord
2. Verify the configuration by checking the registry:

powershell
Get-ItemProperty -Path "HKLM\Software\Microsoft\Cryptography\Wintrust\Config"

Additional Resources
Microsoft Security Advisory 2915720

Notes
This remediation does not require an OS update and works on Windows 10 and Windows Server 2019.


