json.array!(@purchase_orders) do |purchase_order|
  json.extract! purchase_order, :id, :start_date, :end_date, :cost
  json.url purchase_order_url(purchase_order, format: :json)
end
