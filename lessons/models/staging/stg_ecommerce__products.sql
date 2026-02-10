WITH source AS (
    SELECT *

    FROM {{ source('thelook_ecommerce', 'products') }}
)

SELECT
    -- IDs
    id AS product_id,

    -- Others
    brand,
    cost,
    retail_price,
    department


    -- category,
    -- name,
    -- sku,
    -- distribution_center_id

FROM source