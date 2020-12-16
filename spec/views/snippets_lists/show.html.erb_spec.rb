require 'rails_helper'

RSpec.describe "snippets_lists/show", type: :view do
  before(:each) do
    @snippets_list = assign(:snippets_list, SnippetsList.create!(
      is_public: false,
      tags: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
  end
end
