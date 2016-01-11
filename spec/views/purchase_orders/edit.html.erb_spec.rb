require 'rails_helper'

RSpec.describe "purchase_orders/edit", type: :view do
  before(:each) do
    @purchase_order = assign(:purchase_order, PurchaseOrder.create!(
      :cost => 1.5
    ))
  end

  it "renders the edit purchase_order form" do
    render

    assert_select "form[action=?][method=?]", purchase_order_path(@purchase_order), "post" do

      assert_select "input#purchase_order_cost[name=?]", "purchase_order[cost]"
    end
  end
end
