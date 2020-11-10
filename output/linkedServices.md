# Azure Data Factory Linked Services documentation

This document describes all published linked services in the test-datafactory Azure Data Factory resource

## Linked Service: testDataEngVault

### Resource details

Description: No description provided for resource. Please refer to Azure Data Factory best practices

Data Type: linkedServices

#### Other Properties

annotations | type | typeProperties.baseUrl | description
----------- | ---- | ---------------------- | -----------
System.Object[] | AzureKeyVault |                        | No description provided for resource. Please refer to Azure Data Factory best practices

---

## Linked Service: LS_ADBR_DataEngineering

### Resource details

Description: No description provided for resource. Please refer to Azure Data Factory best practices

Data Type: linkedServices

#### Other Properties

annotations | type | typeProperties.domain | typeProperties.accessToken.type | typeProperties.accessToken.store.referenceName | typeProperties.accessToken.store.type | typeProperties.accessToken.secretName | typeProperties.existingClusterId | description
----------- | ---- | --------------------- | ------------------------------- | ---------------------------------------------- | ------------------------------------- | ------------------------------------- | -------------------------------- | -----------
System.Object[] | AzureDatabricks |                       |                                 |                                                |                                       |                                       |                                  | No description provided for resource. Please refer to Azure Data Factory best practices

### Resource dependencies

[testDataEngVault](linkedServices.md#testdataengvault)

---

## Linked Service: LS_ASQL_testMetadata

### Resource details

Description: test Metadata database 

Data Type: linkedServices

#### Other Properties

description | annotations | type | typeProperties.connectionString.type | typeProperties.connectionString.store.referenceName | typeProperties.connectionString.store.type | typeProperties.connectionString.secretName
----------- | ----------- | ---- | ------------------------------------ | --------------------------------------------------- | ------------------------------------------ | ------------------------------------------
test Metadata database  | System.Object[] | AzureSqlDatabase |                                      |                                                     |                                            |

### Resource dependencies

[testDataEngVault](linkedServices.md#testdataengvault)

---

## Linked Service: LS_MSQL_testReporting

### Resource details

Description: test Reporting DB connection.

Data Type: linkedServices

#### Other Properties

description | parameters.DatabaseName.type | annotations | type | typeProperties.connectionString | typeProperties.userName | typeProperties.password.type | typeProperties.password.store.referenceName | typeProperties.password.store.type | typeProperties.password.secretName | connectVia.referenceName | connectVia.type
----------- | ---------------------------- | ----------- | ---- | ------------------------------- | ----------------------- | ---------------------------- | ------------------------------------------- | ---------------------------------- | ---------------------------------- | ------------------------ | ---------------
test Reporting DB connection. |                              | System.Object[] | SqlServer |                                 |                         |                              |                                             |                                    |                                    |                          |

### Resource dependencies

[ir-selfhosted-testsql01](integrationRuntimes.md#ir-selfhosted-testsql01)

[testDataEngVault](linkedServices.md#testdataengvault)

---

## Linked Service: ls_adls_testdatalake

### Resource details

Description: No description provided for resource. Please refer to Azure Data Factory best practices

Data Type: linkedServices

#### Other Properties

annotations | type | typeProperties.url | typeProperties.accountKey.type | typeProperties.accountKey.store.referenceName | typeProperties.accountKey.store.type | typeProperties.accountKey.secretName | description
----------- | ---- | ------------------ | ------------------------------ | --------------------------------------------- | ------------------------------------ | ------------------------------------ | -----------
System.Object[] | AzureBlobFS |                    |                                |                                               |                                      |                                      | No description provided for resource. Please refer to Azure Data Factory best practices

### Resource dependencies

[testDataEngVault](linkedServices.md#testdataengvault)

---

## Linked Service: ls_pgre_test_eu

### Resource details

Description: No description provided for resource. Please refer to Azure Data Factory best practices

Data Type: linkedServices

#### Other Properties

annotations | type | typeProperties.connectionString.type | typeProperties.connectionString.store.referenceName | typeProperties.connectionString.store.type | typeProperties.connectionString.secretName | connectVia.referenceName | connectVia.type | description
----------- | ---- | ------------------------------------ | --------------------------------------------------- | ------------------------------------------ | ------------------------------------------ | ------------------------ | --------------- | -----------
System.Object[] | PostgreSql |                                      |                                                     |                                            |                                            |                          |                 | No description provided for resource. Please refer to Azure Data Factory best practices

### Resource dependencies

[ir-selfhosted-test26](integrationRuntimes.md#ir-selfhosted-test26)

[testDataEngVault](linkedServices.md#testdataengvault)

---
