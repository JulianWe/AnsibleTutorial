Connect-VIServer -Server "{{ vcenter_fqdn }}" -User "{{vc_username}}" -Password "{{vc_password}}" | Out-Null
$result = Get-VMHost | Select-Object -ExcludeProperty ExtensionData | ConvertTo-Json -Depth 1
$result | Out-File -FilePath vmhost.json
#Set-PowerCLIConfiguration -ParticipateInCeip $false -InvalidCertificateAction Ignore -Confirm:$false
#Connect-VIServer -Server {{ vcenter_fqdn }} -User {{ vc_username }} -password {{ vc_password }}
#Get-VM -Name {{ inventory_hostname }} | Invoke-VMScript -vm {{ inventory_hostname }} -GuestUser {{ ansible_ssh_user }} -GuestPassword {{ ansible_ssh_pass }} -scriptText 'ifconfig'
