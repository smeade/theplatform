require 'rails_helper'

RSpec.describe "projects/show", type: :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      :account => nil,
      :name => "Name",
      :headline => "Headline",
      :subhead => "Subhead",
      :slug => "Slug",
      :notice => "Notice",
      :active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Headline/)
    expect(rendered).to match(/Subhead/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(/Notice/)
    expect(rendered).to match(/false/)
  end
end
