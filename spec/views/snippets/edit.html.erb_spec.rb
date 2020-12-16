require 'rails_helper'

RSpec.describe "snippets/edit", type: :view do
  before(:each) do
    @snippet = assign(:snippet, Snippet.create!(
      trigger: "MyText",
      replacement: "MyText",
      type: "MyText",
      is_public: false,
      tags: "MyText"
    ))
  end

  it "renders the edit snippet form" do
    render

    assert_select "form[action=?][method=?]", snippet_path(@snippet), "post" do

      assert_select "textarea[name=?]", "snippet[trigger]"

      assert_select "textarea[name=?]", "snippet[replacement]"

      assert_select "textarea[name=?]", "snippet[type]"

      assert_select "input[name=?]", "snippet[is_public]"

      assert_select "textarea[name=?]", "snippet[tags]"
    end
  end
end
