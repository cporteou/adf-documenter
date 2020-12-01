# Azure Data Factory Linked Services documentation

This document describes all published linked services in the test-datafactory Azure Data Factory resource

---

## testDataEngVault

### Resource details

Description: No description provided for resource. Please refer to Azure Data Factory best practices

Data Type: AzureKeyVault

---

## LS_ADBR_DataEngineering

### Resource details

Description: No description provided for resource. Please refer to Azure Data Factory best practices

Data Type: AzureDatabricks

### Resource dependencies

linkedServices: [testDataEngVault](linkedServices.md#testdataengvault)

---

## LS_ASQL_testMetadata

### Resource details

Description: test Metadata database 

Data Type: AzureSqlDatabase

### Resource dependencies

linkedServices: [testDataEngVault](linkedServices.md#testdataengvault)

---

## LS_MSQL_testReporting

### Resource details

Description: test Reporting DB connection.

Data Type: SqlServer

### Resource dependencies

integrationRuntimes: [ir-selfhosted-testsql01](integrationRuntimes.md#ir-selfhosted-testsql01)

linkedServices: [testDataEngVault](linkedServices.md#testdataengvault)

---

## ls_adls_testdatalake

### Resource details

Description: No description provided for resource. Please refer to Azure Data Factory best practices

Data Type: AzureBlobFS

### Resource dependencies

linkedServices: [testDataEngVault](linkedServices.md#testdataengvault)

---

## ls_pgre_test_eu

### Resource details

Description: No description provided for resource. Please refer to Azure Data Factory best practices

Data Type: PostgreSql

### Resource dependencies

integrationRuntimes: [ir-selfhosted-test26](integrationRuntimes.md#ir-selfhosted-test26)

linkedServices: [testDataEngVault](linkedServices.md#testdataengvault)

---
