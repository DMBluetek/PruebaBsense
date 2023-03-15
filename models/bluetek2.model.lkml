connection: "az-look"

# include all the views
include: "/views/**/tabla_preliminar.view"

datagroup: bluetek2_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: bluetek2_default_datagroup

explore: tabla_preliminar {}
