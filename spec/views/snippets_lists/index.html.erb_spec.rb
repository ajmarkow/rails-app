require 'rails_helper'

RSpec.describe "snippets_lists/index", type: :view do
  before(:each) do
    assign(:snippets_lists, [
      SnippetsList.create!(
        is_public: false,
        tags: "MyText"
      ),
      SnippetsList.create!(
        is_public: false,
        tags: "MyText"
      )
    ])
  end

  it "renders a list of snippets_lists" do
    render
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
