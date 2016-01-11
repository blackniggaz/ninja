require 'rails_helper'

RSpec.describe "plants/new", type: :view do
  before(:each) do
    assign(:plant, Plant.new(
      :name => "MyString",
      :description => "MyString",
      :price => 1.5
    ))
  end

  it "renders new plant form" do
    render

    assert_select "form[action=?][method=?]", plants_path, "post" do

      assert_select "input#plant_name[name=?]", "plant[name]"

      assert_select "input#plant_description[name=?]", "plant[description]"

      assert_select "input#plant_price[name=?]", "plant[price]"
    end
  end
end
