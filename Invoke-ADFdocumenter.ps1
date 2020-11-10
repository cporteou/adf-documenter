
# param (
# 	[Parameter(Mandatory=$true)]
#     [string]$WorkingDir='',
#     [Parameter(Mandatory=$true)]
#     [string]$adfInstance='',
#     [string]$DocTemplatePath = ''
# )

#Install-Module PowershellGet -Force -AllowClobber
#Update-Module -Name PSDocs -AllowPrerelease -Force

#Uninstall-Module -Name PSDocs

#Run the functions file

#Testing
$WorkingDir=(Get-Item .).FullName
$adfInstance='test-datafactory'
$DocTemplatePath = "$WorkingDir\template.doc.ps1"

$templatefile = "$WorkingDir\test\ARMTemplateforFactory.json"

$PSDocsInputObject = New-Object PsObject -property @{
    'armTemplate' = $templatefile
    'adfInstance' = $adfInstance
}

Invoke-PSDocument -Path $DocTemplatePath -InputObject $PSDocsInputObject -OutputPath "$WorkingDir\output"# -Instance "linkedServices" -Verbose
