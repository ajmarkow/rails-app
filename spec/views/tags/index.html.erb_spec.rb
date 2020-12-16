require 'rails_helper'

RSpec.describe "tags/index", type: :view do
  before(:each) do
    assign(:tags, [
      Tag.create!(
        slug: "MyText",
        is_public: false
      ),
      Tag.create!(
        slug: "MyText",
        is_public: false
      )
    ])
  end

  it "renders a list of tags" do
    render
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
