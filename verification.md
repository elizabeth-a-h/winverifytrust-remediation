# Verification for WinVerifyTrust Remediation

After applying the remediation steps to mitigate the WinVerifyTrust vulnerability, follow these steps to verify that the configuration has been successfully applied:

## Steps to Verify the Configuration

1. **Check the Registry**:
   Open a PowerShell window with **Administrator privileges** and run the following command:

   ```powershell
   Get-ItemProperty -Path "HKLM\Software\Microsoft\Cryptography\Wintrust\Config"

   

PS C:\> Get-ItemProperty -Path "HKLM\Software\Microsoft\Cryptography\Wintrust\Config"

EnableCertPaddingCheck
-----------------------
1


Confirm No Errors:
If the registry value is correctly set, there should be no errors returned when running the Get-ItemProperty command. If an error occurs, ensure that the registry modification script ran successfully and that the correct permissions were used.
Test with a Signed Application:
After enabling signature validation, you can also test by running a signed application to verify that the system properly validates its signature.

Additional Resources
Microsoft Security Advisory 2915720

Notes
This verification process applies to Windows 10 and Windows Server 2019 systems.
