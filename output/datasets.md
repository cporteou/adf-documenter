# Azure Data Factory dataset documentation

This document describes all published datasets in the test-datafactory Azure Data Factory resource

## Dataset: ds_asql_testMetadata

### Resource details

Description: No description provided for resource. Please refer to Azure Data Factory best practices

Data Type: datasets

#### Other Properties

linkedServiceName.referenceName | linkedServiceName.type | annotations | type | schema | typeProperties | description
------------------------------- | ---------------------- | ----------- | ---- | ------ | -------------- | -----------
                                |                        | System.Object[] | AzureSqlTable | System.Object[] |                | No description provided for resource. Please refer to Azure Data Factory best practices

### Resource dependencies

[LS_ASQL_testMetadata](linkedServices.md#ls\_asql\_testmetadata)

---

## Dataset: ds_json_test_landing

### Resource details

Description: No description provided for resource. Please refer to Azure Data Factory best practices

Data Type: datasets

#### Other Properties

linkedServiceName.referenceName | linkedServiceName.type | parameters.tablename.type | parameters.extractdate.type | annotations | type | typeProperties.location.type | typeProperties.location.fileName.value | typeProperties.location.fileName.type | typeProperties.location.folderPath.value | typeProperties.location.folderPath.type | typeProperties.location.fileSystem | schema.type | schema.properties.commitInfo.type | schema.properties.commitInfo.properties.timestamp.type | schema.properties.commitInfo.properties.userId.type | schema.properties.commitInfo.properties.userName.type | schema.properties.commitInfo.properties.operation.type | schema.properties.commitInfo.properties.operationParameters.type | schema.properties.commitInfo.properties.operationParameters.properties | schema.properties.commitInfo.properties.notebook.type | schema.properties.commitInfo.properties.notebook.properties | schema.properties.commitInfo.properties.clusterId.type | schema.properties.commitInfo.properties.isolationLevel.type | schema.properties.commitInfo.properties.isBlindAppend.type | schema.properties.protocol.type | schema.properties.protocol.properties.minReaderVersion.type | schema.properties.protocol.properties.minWriterVersion.type | schema.properties.metaData.type | schema.properties.metaData.properties.id.type | schema.properties.metaData.properties.format.type | schema.properties.metaData.properties.format.properties | schema.properties.metaData.properties.schemaString.type | schema.properties.metaData.properties.partitionColumns.type | schema.properties.metaData.properties.configuration.type | schema.properties.metaData.properties.createdTime.type | schema.properties.add.type | schema.properties.add.properties.path.type | schema.properties.add.properties.partitionValues.type | schema.properties.add.properties.size.type | schema.properties.add.properties.modificationTime.type | schema.properties.add.properties.dataChange.type | schema.properties.add.properties.stats.type | description
------------------------------- | ---------------------- | ------------------------- | --------------------------- | ----------- | ---- | ---------------------------- | -------------------------------------- | ------------------------------------- | ---------------------------------------- | --------------------------------------- | ---------------------------------- | ----------- | --------------------------------- | ------------------------------------------------------ | --------------------------------------------------- | ----------------------------------------------------- | ------------------------------------------------------ | ---------------------------------------------------------------- | ---------------------------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------------- | ------------------------------------------------------ | ----------------------------------------------------------- | ---------------------------------------------------------- | ------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ------------------------------- | --------------------------------------------- | ------------------------------------------------- | ------------------------------------------------------- | ------------------------------------------------------- | ----------------------------------------------------------- | -------------------------------------------------------- | ------------------------------------------------------ | -------------------------- | ------------------------------------------ | ----------------------------------------------------- | ------------------------------------------ | ------------------------------------------------------ | ------------------------------------------------ | ------------------------------------------- | -----------
                                |                        |                           |                             | System.Object[] | Json |                              |                                        |                                       |                                          |                                         |                                    |             |                                   |                                                        |                                                     |                                                       |                                                        |                                                                  |                                                                        |                                                       |                                                             |                                                        |                                                             |                                                            |                                 |                                                             |                                                             |                                 |                                               |                                                   |                                                         |                                                         |                                                             |                                                          |                                                        |                            |                                            |                                                       |                                            |                                                        |                                                  |                                             | No description provided for resource. Please refer to Azure Data Factory best practices

### Resource dependencies

[ls_adls_testdatalake](linkedServices.md#ls\_adls\_testdatalake)

---

## Dataset: ds_msql_testReporting

### Resource details

Description: No description provided for resource. Please refer to Azure Data Factory best practices

Data Type: datasets

#### Other Properties

linkedServiceName.referenceName | linkedServiceName.type | linkedServiceName.parameters.DatabaseName.value | linkedServiceName.parameters.DatabaseName.type | parameters.tablename.type | parameters.schemaname.type | parameters.databasename.type | annotations | type | schema | typeProperties.schema.value | typeProperties.schema.type | typeProperties.table.value | typeProperties.table.type | description
------------------------------- | ---------------------- | ----------------------------------------------- | ---------------------------------------------- | ------------------------- | -------------------------- | ---------------------------- | ----------- | ---- | ------ | --------------------------- | -------------------------- | -------------------------- | ------------------------- | -----------
                                |                        |                                                 |                                                |                           |                            |                              | System.Object[] | SqlServerTable | System.Object[] |                             |                            |                            |                           | No description provided for resource. Please refer to Azure Data Factory best practices

### Resource dependencies

[LS_MSQL_testReporting](linkedServices.md#ls\_msql\_testreporting)

---
