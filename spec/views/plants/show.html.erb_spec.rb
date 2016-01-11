require 'rails_helper'

RSpec.describe "plants/show", type: :view do
  before(:each) do
    @plant = assign(:plant, Plant.create!(
      :name => "Name",
      :description => "Description",
      :price => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/1.5/)
  end
end
