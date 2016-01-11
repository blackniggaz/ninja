require 'rails_helper'

RSpec.describe "plants/edit", type: :view do
  before(:each) do
    @plant = assign(:plant, Plant.create!(
      :name => "MyString",
      :description => "MyString",
      :price => 1.5
    ))
  end

  it "renders the edit plant form" do
    render

    assert_select "form[action=?][method=?]", plant_path(@plant), "post" do

      assert_select "input#plant_name[name=?]", "plant[name]"

      assert_select "input#plant_description[name=?]", "plant[description]"

      assert_select "input#plant_price[name=?]", "plant[price]"
    end
  end
end
