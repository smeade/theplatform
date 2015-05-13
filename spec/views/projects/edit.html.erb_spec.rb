require 'rails_helper'

RSpec.describe "projects/edit", type: :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      :account => nil,
      :name => "MyString",
      :headline => "MyString",
      :subhead => "MyString",
      :slug => "MyString",
      :notice => "MyString",
      :active => false
    ))
  end

  it "renders the edit project form" do
    render

    assert_select "form[action=?][method=?]", project_path(@project), "post" do

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
