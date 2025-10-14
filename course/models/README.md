```bash
dbt run-operation generate_base_model --args '{"source_name": "thelook_ecommerce", "table_name": "order_items"}'

# to auto complete dbt model name, compile first
dbt compile

# before generate_model_yaml
## generate the model view/table first
## use `dbt run` the table/view will be generated to
dbt run

dbt run-operation generate_model_yaml --args '{"model_names": ["stg_ecommerce__products","stg_ecommerce__order_items"]}'

# to select the model for testing
dbt test -s stg_ecommerce__orders
```