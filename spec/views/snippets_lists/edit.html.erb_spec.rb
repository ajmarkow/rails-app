require 'rails_helper'

RSpec.describe "snippets_lists/edit", type: :view do
  before(:each) do
    @snippets_list = assign(:snippets_list, SnippetsList.create!(
      is_public: false,
      tags: "MyText"
    ))
  end

  it "renders the edit snippets_list form" do
    render

    assert_select "form[action=?][method=?]", snippets_list_path(@snippets_list), "post" do

      assert_select "input[name=?]", "snippets_list[is_public]"

      assert_select "textarea[name=?]", "snippets_list[tags]"
    end
  end
end
