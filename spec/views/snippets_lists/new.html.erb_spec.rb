require 'rails_helper'

RSpec.describe "snippets_lists/new", type: :view do
  before(:each) do
    assign(:snippets_list, SnippetsList.new(
      is_public: false,
      tags: "MyText"
    ))
  end

  it "renders new snippets_list form" do
    render

    assert_select "form[action=?][method=?]", snippets_lists_path, "post" do

      assert_select "input[name=?]", "snippets_list[is_public]"

      assert_select "textarea[name=?]", "snippets_list[tags]"
    end
  end
end
