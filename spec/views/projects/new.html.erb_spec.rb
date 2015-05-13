require 'rails_helper'

RSpec.describe "projects/new", type: :view do
  before(:each) do
    assign(:project, Project.new(
      :account => nil,
      :name => "MyString",
      :headline => "MyString",
      :subhead => "MyString",
      :slug => "MyString",
      :notice => "MyString",
      :active => false
    ))
  end

  it "renders new project form" do
    render

    assert_select "form[action=?][method=?]", projects_path, "post" do

      assert_select "input#project_account_id[name=?]", "project[account_id]"

      assert_select "input#project_name[name=?]", "project[name]"

      assert_select "input#project_headline[name=?]", "project[headline]"

      assert_select "input#project_subhead[name=?]", "project[subhead]"

      assert_select "input#project_slug[name=?]", "project[slug]"

      assert_select "input#project_notice[name=?]", "project[notice]"

      assert_select "input#project_active[name=?]", "project[active]"
    end
  end
end
