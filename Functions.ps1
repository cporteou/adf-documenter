
function global:Format-ADFName {
    param (
        [parameter(Mandatory = $true)] [String] $RawValue
    )
    $CleanName = $RawValue.substring($RawValue.IndexOf("/")+1, $RawValue.LastIndexOf("'") - $RawValue.IndexOf("/")-1)
    # Do it with regex
    #$CleanName = [regex]::Matches($RawValue, "\, '\/(.*)'\)]").Groups[1].Value

    return $CleanName
}

function global:Format-ADFType {
    param (
        [parameter(Mandatory = $true)] [String] $RawValue
    )
    $CleanName = $RawValue.substring($RawValue.LastIndexOf("/")+1, $RawValue.Length - $RawValue.LastIndexOf("/")-1)
    # Do it with regex
    #$CleanName = [regex]::Matches($RawValue, '([^\/]+$)').Groups[1].Value
    
    return $CleanName
}

Function global:Format-ADFDependencyMD {
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory = $True, ValueFromPipeLine = $True)]
        [String]$ResourceDepends
    )

    Process {
        ForEach($input in $ResourceDepends){

            $depResource = Format-ADFName -RawValue $input #[regex]::Matches($dep, "\, '\/(.*)'\)]").Groups[1].Value
            $file, $header = $depResource.split('/')
            if($header -and $file){
            $headerlink = $header -replace "_", "\_"
            "$($file): [$($header)]($($file).md#$($headerlink.ToLower()))"
            }
        }
    }
    # return $dependsOnLink

}
#* Testing
#$resource.dependsOn | Format-ADFDependencyMD

function global:Get-ADFMetadata {
    param (
        [Parameter(Mandatory = $True)]
        [String]$Path,
        [ValidateSet('datasets', 'integrationRuntimes', 'linkedServices', 'pipelines', 'triggers')]
        [String]$ResourceType        
    )
    
    process {

        if(-not (Test-Path -Path $Path)){
            Write-Error "ARM template file not found. Please check the path provided."
            return
        }

        #TODO Test if this is a valid data factory ARM Template

        #Get JSON from ARM Template
        Write-Verbose "Accessing Azure Data Factory ARM Template at $($Path)"
        $armTemplate = Get-Content $Path | ConvertFrom-Json

        # Check if resource type has been specified
        if ($PSBoundParameters.ContainsKey('ResourceType')){
            $resources = $armTemplate.resources | Where-Object { $_.Type.Endswith($ResourceType) }
        } else {
            $resources = $armTemplate.resources
        }
        
        Write-Verbose "$($resources.count) resources found in ARM Template"
        #Run through each resource
        ForEach($resource in $resources) {

            #* Testing
            # $resource = $resources[0]

            #Clean up the resource Name
            $resource.name = Format-ADFName -RawValue $resource.name 
            
            #Clean up the resource Type
            $resource.type = Format-ADFType -RawValue $resource.type
            
            #Handle blank descriptions
            #! Shouldnt need this if we properly test and required descriptions
            if ($resource.properties.description.length -eq 0) {
                $resource.properties | Add-Member -MemberType NoteProperty -Name description -Value 'No description provided for resource. Please refer to Azure Data Factory best practices'
            }
            
        }        
        return $resources;
    }
}

# Function Get-PipelineActivities {
#     [CmdletBinding()]
#     Param (
#         [Parameter(ValueFromPipeLine = $True)]
#         [Object[]]$PipelineObject
#     )

#     #* Testing 
#     # $adfPipeline = $Temp[0]
#     # $activity = $adfPipeline.properties.activities[0]

#     ForEach($activity in $PipelineObject.properties.activities) {
#         #Name
#         #description
#         #type
#         #DependsOn (only on some)
#         #Policy (only on some)
#         #typeProperties
#         #linkedServiceName (only on some)
#         #! Handle nested activities inside ForEach-Object's etc???
#             if ($activity.typeProperties.activities.count -gt 0){
                
#                 for($i = 0; $i -le $activity.typeProperties.activities.count; $i++){ #This will show zero for non-relevant activities
#                     #$activity.typeProperties.activities[$i]
                    
#                     ConvertTo-FlatObject $activity.typeProperties.activities[$i]
#                 }
#             }

#         # $activity.dependsOn.Count # Get count of dependencies we need to change to URLs
#         # $activityDetail = ConvertTo-FlatObject $activity

#         #Hyperlink dependencies
#         # if($activityDetail -match 'dependsOn'){
#         #     #TODO Loop through all possible activities
#         #     $activityDetail.'dependsOn.1.activity'
#         # }
#         #Hyperlink dataset references        
#     }
# }

Function Get-IfConditionActivities {
    #Break out nested activity details 
}

Function Get-ForEach-ObjectActivities {
    #Break out nested activity details
}

Function global:ConvertTo-FlatObject { #Ref: https://powersnippets.com/convertto-flatobject/
    [CmdletBinding()]Param (									# Version 02.00.16, by iRon
        [Parameter(ValueFromPipeLine = $True)][Object[]]$Objects,
        [String]$Separator = ".", [ValidateSet("", 0, 1)]$Base = 1, [Int]$Depth = 5, [Int]$Uncut = 1,
        [String[]]$ToString = ([String], [DateTime], [TimeSpan], [Version], [Enum]), [String[]]$Path = @()
    )

    $PipeLine = $Input | ForEach-Object {$_}; If ($PipeLine) {$Objects = $PipeLine}
    If (@(Get-PSCallStack)[1].Command -eq $MyInvocation.MyCommand.Name -or @(Get-PSCallStack)[1].Command -eq "<position>") {
        $Object = @($Objects)[0]; $Iterate = New-Object System.Collections.Specialized.OrderedDictionary
        If ($ToString | Where-Object {$Object -is $_}) {$Object = $Object.ToString()}
        ElseIf ($Depth) {$Depth--
            If ($Object.GetEnumerator.OverloadDefinitions -match "[\W]IDictionaryEnumerator[\W]") {
                $Iterate = $Object
            } ElseIf ($Object.GetEnumerator.OverloadDefinitions -match "[\W]IEnumerator[\W]") {
                $Object.GetEnumerator() | ForEach-Object -Begin {$i = $Base} {$Iterate.($i) = $_; $i += 1}
            } Else {
                $Names = If ($Uncut) {$Uncut--} Else {$Object.PSStandardMembers.DefaultDisplayPropertySet.ReferencedPropertyNames}
                If (!$Names) {$Names = $Object.PSObject.Properties | Where-Object {$_.IsGettable} | Select-Object -Expand Name}
                If ($Names) {$Names | ForEach-Object {$Iterate.$_ = $Object.$_}}
            }
        }
        If (@($Iterate.Keys).Count) {
            $Iterate.Keys | ForEach-Object {
                ConvertTo-FlatObject  @(,$Iterate.$_) $Separator $Base $Depth $Uncut $ToString ($Path + $_)
            }
        }  Else {$Property.(($Path | Where-Object {$_}) -Join $Separator) = $Object}
    } ElseIf ($Objects -ne $Null) {
        @($Objects) | ForEach-Object -Begin {$Output = @(); $Names = @()} {
            New-Variable -Force -Option AllScope -Name Property -Value (New-Object System.Collections.Specialized.OrderedDictionary)
            ConvertTo-FlatObject @(,$_) $Separator $Base $Depth $Uncut $ToString $Path
            $Output += New-Object PSObject -Property $Property
            $Names += $Output[-1].PSObject.Properties | Select-Object -Expand Name
        }
        $Output | Select-Object ([String[]]($Names | Select-Object -Unique))
    }
}; Set-Alias Flatten ConvertTo-FlatObject