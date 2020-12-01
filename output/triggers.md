# Azure Data Factory Trigger documentation

This document describes all published triggers in the test-datafactory Azure Data Factory resource

---

## Monthly

### Resource details

Description: No description provided for resource. Please refer to Azure Data Factory best practices

Data Type: triggers

#### Other Properties

annotations | runtimeState | pipelines.1.pipelineReference.referenceName | pipelines.1.pipelineReference.type | pipelines.1.parameters | type | typeProperties.recurrence.frequency | typeProperties.recurrence.interval | typeProperties.recurrence.startTime | typeProperties.recurrence.timeZone | typeProperties.recurrence.schedule.minutes.1 | typeProperties.recurrence.schedule.hours.1 | typeProperties.recurrence.schedule.monthDays.1 | description
----------- | ------------ | ------------------------------------------- | ---------------------------------- | ---------------------- | ---- | ----------------------------------- | ---------------------------------- | ----------------------------------- | ---------------------------------- | -------------------------------------------- | ------------------------------------------ | ---------------------------------------------- | -----------
System.Object[] | Started      | pl_tran_test_parquet                        | PipelineReference                  |                        | ScheduleTrigger | Month                               | 1                                  | 2020-09-29T10:15:00.000Z            | UTC                                | 0                                            | 6                                          | 1                                              | No description provided for resource. Please refer to Azure Data Factory best practices

### Resource dependencies

pipelines: [pl_tran_test_parquet](pipelines.md#pl\_tran\_test\_parquet)

---

## Daily 6AM

### Resource details

Description: No description provided for resource. Please refer to Azure Data Factory best practices

Data Type: triggers

#### Other Properties

annotations | runtimeState | pipelines.1.pipelineReference.referenceName | pipelines.1.pipelineReference.type | pipelines.1.parameters | type | typeProperties.recurrence.frequency | typeProperties.recurrence.interval | typeProperties.recurrence.startTime | typeProperties.recurrence.timeZone | typeProperties.recurrence.schedule.minutes.1 | typeProperties.recurrence.schedule.hours.1 | description
----------- | ------------ | ------------------------------------------- | ---------------------------------- | ---------------------- | ---- | ----------------------------------- | ---------------------------------- | ----------------------------------- | ---------------------------------- | -------------------------------------------- | ------------------------------------------ | -----------
System.Object[] | Started      | pl_data_test_fullload_landing               | PipelineReference                  |                        | ScheduleTrigger | Day                                 | 1                                  | 2020-10-23T06:05:00.000Z            | UTC                                | 0                                            | 6                                          | No description provided for resource. Please refer to Azure Data Factory best practices

### Resource dependencies

pipelines: [pl_data_test_fullload_landing](pipelines.md#pl\_data\_test\_fullload\_landing)

---
