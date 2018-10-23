include: "*.view.lkml"                                # include all views in this project
include: "/core_hub_model/core_hub_model.model.lkml"  # include the remote model file (contains the connection)
include: "/hub_and_spoke/*.view"                      # includes the remote views


explore: orders_spoke {
  view_name: orders
  extends: [orders]
  join: orders_finance {
    type: left_outer
    sql_on: ${orders_finance.id} = ${orders.id} ;;
    relationship: one_to_one
  }

  join: items_finance {
    sql_on: ${orders.id} = ${items_finance.order_id} ;;
    type: left_outer
    relationship: many_to_one
  }

}
explore: orders_items_spoke {
  view_name: order_items
  extends: [order_items] }

explore: orders_finance {}
