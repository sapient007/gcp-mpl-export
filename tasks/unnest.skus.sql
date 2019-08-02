select category, sku.sku_id, ARRAY_TO_STRING(sku.prices, "|", "") as price,  sku.description from gcp_mpl.all_products, UNNEST(skus) as sku
