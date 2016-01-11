require 'rails_helper'

RSpec.describe "purchase_orders/new", type: :view do
  before(:each) do
    assign(:purchase_order, PurchaseOrder.new(
      :cost => 1.5
    ))
  end

  it "renders new purchase_order form" do
    render

    assert_select "form[action=?][method=?]", purchase_orders_path, "post" do

      assert_select "input#purchase_order_cost[name=?]", "purchase_order[cost]"
    end
  end
end
