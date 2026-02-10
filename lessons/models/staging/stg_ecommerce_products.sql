WITH source AS (
    SELECT *

    FROM {{ source('thelook_ecommerce', 'products') }}
)

SELECT
    -- IDs
    id AS product_id,

    -- Others
    cost,
    retail_price,
    department


    -- category,
    -- name,
    -- brand,
    -- sku,
    -- distribution_center_id

FROM source