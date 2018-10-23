include: "/core_hub_model/*.view"


view: items_finance {
  extends: [order_items]
  measure: total_sale_price {
    type: sum
    sql: ${sale_price} ;;
  }

  measure: average_sale_price {
    type: average
    sql: ${sale_price} ;;
  }

  measure: least_expensive_item {
    type: min
    sql: ${sale_price} ;;
  }

  measure: most_expensive_item {
    type: max
    sql: ${sale_price} ;;
  }
}
