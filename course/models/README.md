```bash
dbt run-operation generate_base_model --args '{"source_name": "thelook_ecommerce", "table_name": "orders"}'

# to auto complete dbt model name, compile first
dbt compile

dbt run-operation generate_model_yaml --args '{"model_names": ["stg_ecommerce__orders"]}' --profiles-dir ~/.dbt > stg_ecommerce__orders.yml

# to select the model for testing
dbt test -s stg_ecommerce__orders --profiles-dir ~/.dbt
```