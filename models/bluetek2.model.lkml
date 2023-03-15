connection: "az-look"

# include all the views
include: "/views/**/*.view"

datagroup: bluetek2_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: bluetek2_default_datagroup

explore: sysdiagrams {}

explore: tabla_alertas {}

explore: tabla_preliminar {}

explore: table_bsense {}
