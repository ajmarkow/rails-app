require 'rails_helper'

RSpec.describe "tags/edit", type: :view do
  before(:each) do
    @tag = assign(:tag, Tag.create!(
      slug: "MyText",
      is_public: false
    ))
  end

  it "renders the edit tag form" do
    render

    assert_select "form[action=?][method=?]", tag_path(@tag), "post" do

      assert_select "textarea[name=?]", "tag[slug]"

      assert_select "input[name=?]", "tag[is_public]"
    end
  end
end
