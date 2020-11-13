# ADF Documenter

A CI/CD PowerShell script to create interlinked markdown documentation from an Azure Data Factory JSON ARM Template

This project utilises the [PSDocs PowerShell module](https://github.com/BernieWhite/PSDocs) by [Bernie White](https://github.com/BernieWhite)

## Disclaimer 

This script is an open source project and currently relies on a PowerShell module listed as "not a supported product."

## Dependencies

[PSDocs PowerShell module v.0.7.0 or higher](https://www.powershellgallery.com/packages/PSDocs/0.7.0-B2008035)

## Usage

You can run this script against a local copy of the Azure Data Factory ARM template manually using the below syntax though the intended use is within a CI/CD pipeline in Azure DevOps or GitHub

```
 .\Invoke-ADFDocumenter -ADFdirectory "C:\localrepo" -ADFinstance "Data factory name" -DocTemplatePath "location of the .Doc.ps1 file" -outputPath "Path to output md files"
```

|Parameter name|Description|Example|
|--------------|-----------|-------|
|ADFdirectory|This is the local copy of the top-level folder for the ADF_Publish branch | *C:\my repos\datafactoryrepo* |
|ADFinstance|This is the name of your data factory and will likely be a subfolder of **ADFdirectory** | *adf_mydatafactory* |
|DocTemplatePath| The full path location of the template file (.Doc.ps1) | *C:\repos\adf-documenter\template.Doc.ps1* |
|outputPath| The location where you want the markdown files to be output to | *C:\repos\adf-documenter\output* |

### Azure DevOps 

I will create guides as blogs to step through the implementation using both Azure DevOps and GitHub

### GitHub

