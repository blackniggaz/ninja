require 'rails_helper'

RSpec.describe "plants/index", type: :view do
  before(:each) do
    assign(:plants, [
      Plant.create!(
        :name => "Name",
        :description => "Description",
        :price => 1.5
      ),
      Plant.create!(
        :name => "Name",
        :description => "Description",
        :price => 1.5
      )
    ])
  end

  it "renders a list of plants" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
