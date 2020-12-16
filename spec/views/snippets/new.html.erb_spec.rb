require 'rails_helper'

RSpec.describe "snippets/new", type: :view do
  before(:each) do
    assign(:snippet, Snippet.new(
      trigger: "MyText",
      replacement: "MyText",
      type: "MyText",
      is_public: false,
      tags: "MyText"
    ))
  end

  it "renders new snippet form" do
    render

    assert_select "form[action=?][method=?]", snippets_path, "post" do

      assert_select "textarea[name=?]", "snippet[trigger]"

      assert_select "textarea[name=?]", "snippet[replacement]"

      assert_select "textarea[name=?]", "snippet[type]"

      assert_select "input[name=?]", "snippet[is_public]"

      assert_select "textarea[name=?]", "snippet[tags]"
    end
  end
end
