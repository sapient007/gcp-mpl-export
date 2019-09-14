SELECT category, sku_id, usd, max(unit), description  FROM `mling-control-plane-demo.gcp_mpl.gsa_price_export` group by description, category, sku_id, usd order by category
