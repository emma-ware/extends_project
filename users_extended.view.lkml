include: "/core_hub_model/*.view"

view: users_extended {
 extends: [users]


dimension: old_user {
  type: yesno
  sql: ${id} > 1000 ;;
}

















}
