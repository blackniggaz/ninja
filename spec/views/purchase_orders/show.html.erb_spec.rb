require 'rails_helper'

RSpec.describe "purchase_orders/show", type: :view do
  before(:each) do
    @purchase_order = assign(:purchase_order, PurchaseOrder.create!(
      :cost => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1.5/)
  end
end
