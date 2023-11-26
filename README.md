# Preparing Yelp data for NLP using Apache Airflow and Snowflake

<p align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Yelp_Logo.svg/930px-Yelp_Logo.svg.png" width="400"/>
</p>

## Project Overview
The explosion in popularity of language models means that feeding correctly processed clean data is more important than ever to have a reliable system. By preparing our text data to be ready for processing at arrival, we eliminate the time needed to do this step downstream. The idea of this project is to demonstrate a common paradigm for bringing data into a data warehouse from S3, and how we can prepare the data for natural language processing during ETL process. 

### Goals
- Transfer text data from S3 to Snowflake.
- Prepare the data for NLP ML model processing.

## System Architecture
Outline the architecture of the system, including S3, Airflow, and Snowflake components.

![System Architecture Diagram](link-to-diagram)

## Data Source
### Amazon S3
- **Bucket Details**: Provide the name and structure of the S3 bucket.
- **Data Format**: Describe the format of the text data (e.g., JSON, CSV).

## Data Destination
### Snowflake
- **Warehouse Configuration**: Detail the Snowflake warehouse setup.
- **Database and Schema**: Specify the database and schema where data will be stored.

## Pipeline Design
### Apache Airflow
- **DAG Overview**: Describe the Directed Acyclic Graph (DAG) for the pipeline.
- **Tasks Description**:
  - **Task 1**: S3 Data Extraction
  - **Task 2**: Data Transformation for NLP readiness
  - **Task 3**: Loading Data into Snowflake

### Data Transformation
Detail the transformations needed to prepare the text data for NLP, including:
- Tokenization
- Stop word removal
- Lemmatization or stemming

## Airflow Schedule
- **Frequency**: Define how often the pipeline should run.
- **Trigger**: Outline what will trigger the pipeline (e.g., on a schedule, event-driven).

## Monitoring and Logging
Describe the approach for monitoring the pipeline and logging:
- Airflow’s built-in monitoring tools
- Custom alerts and notifications

## Testing and Validation
Outline the strategy for testing and validating:
- Data integrity checks
- Transformation accuracy

## Deployment and Maintenance
Detail the steps for deploying the pipeline and its maintenance process.

## Security Considerations
Outline the security measures, including:
- Data encryption
- Access controls in S3 and Snowflake
- Secure handling of credentials

## Future Enhancements
Discuss potential enhancements or next steps for the project.

---
