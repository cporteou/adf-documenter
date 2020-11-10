Import-module .\functions.ps1

Document "index" {

    # Return all resource types to build index page
    $adfArm = Get-ADFMetadata -Path $InputObject.armTemplate

    Title 'Azure Data Factory documentation'

    $types = $adfArm | Select-Object Type | Sort-Object Type -Unique

    Section "Index"{
        foreach($resource in $types){

            "- [$($resource.Type)]($($resource.Type).md)"
        }   
    } 
}

Document "linkedServices" {

    $adfArm = Get-ADFMetadata -Path $InputObject.armTemplate -ResourceType 'linkedServices'
    
    Title 'Azure Data Factory Linked Services documentation'

    "This document describes all published linked services in the $($InputObject.adfInstance) Azure Data Factory resource"

    foreach($resource in $adfArm){
        Section "Linked Service: $($resource.Name)" {
            Section 'Resource details' -Force {
                "Description: $($resource.properties.description)"

                "Data Type: $($resource.Type)"

                Section 'Other Properties' {
                    #Break out all properties
                    ConvertTo-FlatObject $resource.properties | Table
                    
                }
                
            } 
            
            if($resource.DependsOn.count -gt 0){
                Section 'Resource dependencies' -Force {                     
                    $resource.dependsOn | Format-ADFDependencyMD 
                }
            }#Don't need an ELSE. Section won't show if none exist
            "---" 
        }        
    }
}


Document "datasets" {

    $adfArm = Get-ADFMetadata -Path $InputObject.armTemplate -ResourceType 'datasets'
    
    Title 'Azure Data Factory dataset documentation'

    "This document describes all published datasets in the $($InputObject.adfInstance) Azure Data Factory resource"

    foreach($resource in $adfArm){
        Section "Dataset: $($resource.Name)" {
            Section 'Resource details' -Force {
                "Description: $($resource.properties.Description)"

                "Data Type: $($resource.Type)"

                Section 'Other Properties' {
                    #Break out all properties
                    ConvertTo-FlatObject $resource.properties | Table

                }
            } 
            
            if($resource.DependsOn.count -gt 0){
                Section 'Resource dependencies' -Force { 
                    
                    $resource.dependsOn | Format-ADFDependencyMD 

                }
            } #Don't need an ELSE. Section won't show if none exist
            "---" 
        }        
    }
}


Document "integrationRuntimes" {

    $adfArm = Get-ADFMetadata -Path $InputObject.armTemplate -ResourceType 'integrationRuntimes'
    
    Title 'Azure Data Factory runtime documentation'

    "This document describes all published runtimes in the $($InputObject.adfInstance) Azure Data Factory resource"

    foreach($resource in $adfArm){
        Section "Integration Runtime: $($resource.Name)" {
            Section 'Resource details' -Force {
                "Description: $($resource.properties.Description)"

                "Data Type: $($resource.Type)"

                Section 'Other Properties' {
                    #Break out all properties
                    ConvertTo-FlatObject $resource.properties | Table

                }
            } 
            
            if($resource.DependsOn.count -gt 0){
                Section 'Resource dependencies' -Force {                     
                    $resource.dependsOn | Format-ADFDependencyMD 

                }
            } #Don't need an ELSE. Section won't show if none exist
            "---" 
        }        
    }
}


Document "triggers" {

    $adfArm = Get-ADFMetadata -Path $InputObject.armTemplate -ResourceType 'triggers'
    
    Title 'Azure Data Factory Trigger documentation'

    "This document describes all published triggers in the $($InputObject.adfInstance) Azure Data Factory resource"

    foreach($resource in $adfArm){
        Section "Trigger: $($resource.Name)" {
            Section 'Resource details' -Force {
                "Description: $($resource.properties.Description)"

                "Data Type: $($resource.Type)"
                
                Section 'Other Properties' {
                    #Break out all properties
                    ConvertTo-FlatObject $resource.properties | Table

                }
            } 
            
            if($resource.DependsOn.count -gt 0){
                Section 'Resource dependencies' -Force { 
                    $resource.dependsOn | Format-ADFDependencyMD 

                }
            } #Don't need an ELSE. Section won't show if none exist
            "---" 
        }        
    }
}


# Document "pipelines" {

#     $adfArm = Get-ADFMetadata -Path $InputObject.armTemplate -ResourceType 'pipelines'
    
#     Title 'Azure Data Factory pipeline documentation'

#     "This document describes all published pipelines in the $($InputObject.adfInstance) Azure Data Factory resource"

#     foreach($item in $adfArm){
#         Section "Pipeline: $($item.Name)" {
#             Section 'Resource details' -Force {
#                 "Description: $($item.Description)"

#                 "Data Type: $($item.Type)"
#             } 
            
#             if($resource.DependsOn.count -gt 0){
#                 Section 'Resource dependencies' -Force { 
                    
#                     $resource.dependsOn | Format-ADFDependencyMD 

#                 }
#             } #Don't need an ELSE. Section won't show if none exist

#             Section 'Activities' -Force { 
                    
                
#             }
#         }        
#     }
# }
