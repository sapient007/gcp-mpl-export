SELECT category, sku_id, REGEXP_EXTRACT(price, r"([^USD]+)") as USD_Price, price, description FROM `mling-control-plane-demo.gcp_mpl.all_products_unnested`