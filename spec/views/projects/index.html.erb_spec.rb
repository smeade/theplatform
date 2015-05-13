require 'rails_helper'

RSpec.describe "projects/index", type: :view do
  before(:each) do
    assign(:projects, [
      Project.create!(
        :account => nil,
        :name => "Name",
        :headline => "Headline",
        :subhead => "Subhead",
        :slug => "Slug",
        :notice => "Notice",
        :active => false
      ),
      Project.create!(
        :account => nil,
        :name => "Name",
        :headline => "Headline",
        :subhead => "Subhead",
        :slug => "Slug",
        :notice => "Notice",
        :active => false
      )
    ])
  end

  it "renders a list of projects" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Headline".to_s, :count => 2
    assert_select "tr>td", :text => "Subhead".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => "Notice".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
