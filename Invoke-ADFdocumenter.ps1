
param (
	[Parameter(Mandatory=$true)] [string] $ADFdirectory='',
    [Parameter(Mandatory=$true)] [string] $adfInstance='',
    [Parameter(Mandatory=$true)] [string] $DocTemplatePath = '',
    [Parameter(Mandatory=$true)] [string] $outputPath = ''
)
#Install-Module PowershellGet -Force -AllowClobber
#Update-Module -Name PSDocs -AllowPrerelease -Force

#Testing
# $WorkingDir=(Get-Item .).FullName
# $adfInstance='test-datafactory'
# $DocTemplatePath = "$WorkingDir\template.doc.ps1"

# Building variables
$templatefile = "$ADFdirectory\$adfInstance\ARMTemplateforFactory.json"

$PSDocsInputObject = New-Object PsObject -property @{
    'armTemplate' = $templatefile
    'adfInstance' = $adfInstance
}

Invoke-PSDocument -Path $DocTemplatePath -InputObject $PSDocsInputObject -OutputPath "$outputPath"
