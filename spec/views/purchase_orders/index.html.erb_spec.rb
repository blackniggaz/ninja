require 'rails_helper'

RSpec.describe "purchase_orders/index", type: :view do
  before(:each) do
    assign(:purchase_orders, [
      PurchaseOrder.create!(
        :cost => 1.5
      ),
      PurchaseOrder.create!(
        :cost => 1.5
      )
    ])
  end

  it "renders a list of purchase_orders" do
    render
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
