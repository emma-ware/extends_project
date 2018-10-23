include: "/core_hub_model/*.view"

view: orders_finance {
  view_label: "Orders"
  extends: [orders]


  dimension: days_since_order {
    view_label: "Orders Spoke"
    type: number
    sql: datediff(now(),${created_date}) ;;
  }

  dimension: is_complete {
    view_label: "Orders Spoke"
    type: yesno
    sql: ${status} = 'complete' ;;
  }

  measure: first_order {
    view_label: "Orders Spoke"
    type: date
    sql: MIN(${created_date}) ;;
  }

  measure: latest_order {
    view_label: "Orders Spoke"
    type: date
    sql: MAX(${created_date}) ;;
  }

}
