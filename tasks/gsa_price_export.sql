select  table_b.category, table_b.sku_id, table_b.USD, table_b.UNIT, table_b.DESCRIPTION from (select max(table_a.USD) as max_usd, table_a.sku_id from (select sku.sku_id, REGEXP_EXTRACT(price, r"([^USD]+)") as USD from gcp_mpl.all_products, UNNEST(skus) as sku, UNNEST(sku.prices) as price) as table_a group by table_a.sku_id) as table_a join (select category, sku.sku_id, REGEXP_EXTRACT(price, r"([^USD]+)") as USD, REGEXP_EXTRACT(price, r"([USD].*)") as UNIT, sku.description as DESCRIPTION from gcp_mpl.all_products, UNNEST(skus) as sku, UNNEST(sku.prices) as price ) as table_b on table_a.max_usd = table_b.USD and table_a.sku_id = table_b.sku_id order by table_b.sku_id