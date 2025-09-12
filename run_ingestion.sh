export $(grep -v '^#' .env | xargs)

datahub ingest -c 0.2_ingestion/database/ba_prod.yaml > ingestion.log 2>&1
