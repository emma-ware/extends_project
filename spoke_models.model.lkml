include: "*.view.lkml"                                        # include all views in this project
include: "/extends_remote/do_not_mess_with_lookml.model.lkml" # include the remote model file (contains the connection)
include: "/extends_remote/*.view"                             # includes the remote views


explore: orders_spoke {
  view_name: orders
  extends: [orders]
#   join: orders_finance {
#     type: left_outer
#     sql_on: ${orders_finance.id} = ${orders.id} ;;
#     relationship: one_to_one
#   }
#
#   join: items_finance {
#     sql_on: ${orders.id} = ${items_finance.order_id} ;;
#     type: left_outer
#     relationship: many_to_one
#   }

}
explore: orders_items_spoke {
  view_name: order_items
  extends: [order_items] }

explore: orders_finance {}
