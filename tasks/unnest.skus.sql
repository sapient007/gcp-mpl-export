select category, sku.sku_id, ARRAY_TO_STRING(sku.prices, "|", "") as price,  sku.description from $BIGQUERY_TABLE, UNNEST(skus) as sku
