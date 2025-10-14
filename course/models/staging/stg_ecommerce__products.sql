WITH source AS (
        SELECT *
        FROM {{ source('thelook_ecommerce', 'products') }}
)

SELECT
        id AS product_id,
        cost,
        brand,
        retail_price,
        department
        {# category, #}
        {# name, #}
        {# sku, #}
        {# distribution_center_id #}

FROM source