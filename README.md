# dbt-tutorial-course

:bulb: this dbt project use BigQuery in Google Cloud Platform, please acquire the credentials with following command

```bash
gcloud auth application-default login \
    --scopes=https://www.googleapis.com/auth/bigquery,https://www.googleapis.com/auth/drive.readonly,https://www.googleapis.com/auth/iam.test,https://www.googleapis.com/auth/cloud-platform
```

## Setup dbt Power User

Change the **settings.json** file in VSCode global/workspace configurations

```json
{
    ...

    // CRUCIAL - you need to change this to terminal.integrated.env.[osx|windows|linux] depending on your system
    // and point it to the folder where your profiles directory is stored!
    "terminal.integrated.env.osx": {
        "DBT_PROFILES_DIR": "~/.dbt",
        // "DBT_PROFILES_DIR": "/Users/henry.chou/sources/side-hustle/learning/dbt-tutorial-course/answers",
		"BIGQUERY_PROJECT": "dbt-course-473805"
    }

    ...
```

After the configuration change, press `cmd+shift P` and select **Reload Window** to load the new configs for dbt Power User VSCode extension