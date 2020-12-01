# Azure Data Factory dataset documentation

This document describes all published datasets in the test-datafactory Azure Data Factory resource

---

## ds_asql_testMetadata

### Resource details

Description: No description provided for resource. Please refer to Azure Data Factory best practices

Data Type: datasets

#### Other Properties

linkedServiceName.referenceName | linkedServiceName.type | annotations | type | schema | typeProperties | description
------------------------------- | ---------------------- | ----------- | ---- | ------ | -------------- | -----------
LS_ASQL_testMetadata            | LinkedServiceReference | System.Object[] | AzureSqlTable | System.Object[] |                | No description provided for resource. Please refer to Azure Data Factory best practices

### Resource dependencies

linkedServices: [LS_ASQL_testMetadata](linkedServices.md#ls\_asql\_testmetadata)

---

## ds_json_test_landing

### Resource details

Description: No description provided for resource. Please refer to Azure Data Factory best practices

Data Type: datasets

#### Other Properties

linkedServiceName.referenceName | linkedServiceName.type | parameters.tablename.type | parameters.extractdate.type | annotations | type | typeProperties.location.type | typeProperties.location.fileName.value | typeProperties.location.fileName.type | typeProperties.location.folderPath.value | typeProperties.location.folderPath.type | typeProperties.location.fileSystem | schema.type | schema.properties.commitInfo.type | schema.properties.commitInfo.properties.timestamp | schema.properties.commitInfo.properties.userId | schema.properties.commitInfo.properties.userName | schema.properties.commitInfo.properties.operation | schema.properties.commitInfo.properties.operationParameters | schema.properties.commitInfo.properties.notebook | schema.properties.commitInfo.properties.clusterId | schema.properties.commitInfo.properties.isolationLevel | schema.properties.commitInfo.properties.isBlindAppend | schema.properties.protocol.type | schema.properties.protocol.properties.minReaderVersion | schema.properties.protocol.properties.minWriterVersion | schema.properties.metaData.type | schema.properties.metaData.properties.id | schema.properties.metaData.properties.format | schema.properties.metaData.properties.schemaString | schema.properties.metaData.properties.partitionColumns | schema.properties.metaData.properties.configuration | schema.properties.metaData.properties.createdTime | schema.properties.add.type | schema.properties.add.properties.path | schema.properties.add.properties.partitionValues | schema.properties.add.properties.size | schema.properties.add.properties.modificationTime | schema.properties.add.properties.dataChange | schema.properties.add.properties.stats | description
------------------------------- | ---------------------- | ------------------------- | --------------------------- | ----------- | ---- | ---------------------------- | -------------------------------------- | ------------------------------------- | ---------------------------------------- | --------------------------------------- | ---------------------------------- | ----------- | --------------------------------- | ------------------------------------------------- | ---------------------------------------------- | ------------------------------------------------ | ------------------------------------------------- | ----------------------------------------------------------- | ------------------------------------------------ | ------------------------------------------------- | ------------------------------------------------------ | ----------------------------------------------------- | ------------------------------- | ------------------------------------------------------ | ------------------------------------------------------ | ------------------------------- | ---------------------------------------- | -------------------------------------------- | -------------------------------------------------- | ------------------------------------------------------ | --------------------------------------------------- | ------------------------------------------------- | -------------------------- | ------------------------------------- | ------------------------------------------------ | ------------------------------------- | ------------------------------------------------- | ------------------------------------------- | -------------------------------------- | -----------
ls_adls_testdatalake            | LinkedServiceReference | string                    | string                      | System.Object[] | Json | AzureBlobFSLocation          | @{dataset().tablename}_@{dataset().extractdate}.json | Expression                            | test/landing/test/full/@{dataset().tablename} | Expression                              | sandboxes                          | object      | object                            | @{type=integer}                                   | @{type=string}                                 | @{type=string}                                   | @{type=string}                                    | @{type=object; properties=}                                 | @{type=object; properties=}                      | @{type=string}                                    | @{type=string}                                         | @{type=boolean}                                       | object                          | @{type=integer}                                        | @{type=integer}                                        | object                          | @{type=string}                           | @{type=object; properties=}                  | @{type=string}                                     | @{type=array}                                          | @{type=object}                                      | @{type=integer}                                   | object                     | @{type=string}                        | @{type=object}                                   | @{type=integer}                       | @{type=integer}                                   | @{type=boolean}                             | @{type=string}                         | No description provided for resource. Please refer to Azure Data Factory best practices

### Resource dependencies

linkedServices: [ls_adls_testdatalake](linkedServices.md#ls\_adls\_testdatalake)

---

## ds_msql_testReporting

### Resource details

Description: No description provided for resource. Please refer to Azure Data Factory best practices

Data Type: datasets

#### Other Properties

linkedServiceName.referenceName | linkedServiceName.type | linkedServiceName.parameters.DatabaseName.value | linkedServiceName.parameters.DatabaseName.type | parameters.tablename.type | parameters.schemaname.type | parameters.databasename.type | annotations | type | schema | typeProperties.schema.value | typeProperties.schema.type | typeProperties.table.value | typeProperties.table.type | description
------------------------------- | ---------------------- | ----------------------------------------------- | ---------------------------------------------- | ------------------------- | -------------------------- | ---------------------------- | ----------- | ---- | ------ | --------------------------- | -------------------------- | -------------------------- | ------------------------- | -----------
LS_MSQL_testReporting           | LinkedServiceReference | @dataset().databasename                         | Expression                                     | string                    | string                     | string                       | System.Object[] | SqlServerTable | System.Object[] | @dataset().schemaname       | Expression                 | @dataset().tablename       | Expression                | No description provided for resource. Please refer to Azure Data Factory best practices

### Resource dependencies

linkedServices: [LS_MSQL_testReporting](linkedServices.md#ls\_msql\_testreporting)

---
