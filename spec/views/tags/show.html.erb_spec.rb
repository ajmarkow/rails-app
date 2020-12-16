require 'rails_helper'

RSpec.describe "tags/show", type: :view do
  before(:each) do
    @tag = assign(:tag, Tag.create!(
      slug: "MyText",
      is_public: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
  end
end
