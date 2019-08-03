# Google Cloud Master Price List Export
pipeline that transforms the GCP price list json (https://www.gstatic.com/cloud-site-ux/skus/usd/skus.json) into a big query table. This pipeline leverages *jq* to convert the JSON payload to newline deliminated JSON file. The JSON file is then uploaded to a Bigquery table where data schema is auto detected and unnested. The pipeline is also used to export the unnested skus table to a CSV into an object store

## Next Steps
export CSV to public object store for others to retrieve the file
