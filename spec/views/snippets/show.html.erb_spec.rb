require 'rails_helper'

RSpec.describe "snippets/show", type: :view do
  before(:each) do
    @snippet = assign(:snippet, Snippet.create!(
      trigger: "MyText",
      replacement: "MyText",
      type: "MyText",
      is_public: false,
      tags: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
  end
end
