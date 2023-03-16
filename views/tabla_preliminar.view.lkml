view: tabla_preliminar {
  sql_table_name: dbo.TablaPreliminar ;;

  dimension: avg_pm1 {
    type: number
    sql: ${TABLE}.AVG_pm1 ;;
  }

  dimension: avg_pm10 {
    type: number
    sql: ${TABLE}.AVG_pm10 ;;
  }

  dimension: avg_pm2_5 {
    type: number
    sql: ${TABLE}.AVG_pm2_5 ;;
  }

  dimension: avg_rh {
    type: number
    sql: ${TABLE}.AVG_RH ;;
  }

  dimension_group: time {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
      minute5
    ]
    datatype: timestamp
    sql: ${TABLE}.TIME ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: avgD_pm10 {
    type: average_distinct
    sql_distinct_key: ${time_time} ;;
    sql: ${avg_pm10};;
  }

  measure: avgD_pm1 {
    type: average_distinct
    sql_distinct_key: ${time_time} ;;
    sql: ${avg_pm1};;
  }

  measure: avgD_pm2_5 {
    type: average_distinct
    sql_distinct_key: ${time_time} ;;
    sql: ${avg_pm2_5};;
  }

  measure: avgD_rh {
    type: average_distinct
    sql_distinct_key: ${time_time} ;;
    sql: ${avg_rh};;
  }

  dimension: tiempoRH {
    type: tier
    tiers: [0,39]
    style: classic
    sql: ${avg_rh} ;;

  }


}
