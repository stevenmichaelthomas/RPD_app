require 'spec_helper'

describe "issues/edit" do
  before(:each) do
    @issue = assign(:issue, stub_model(Issue,
      :publication => "MyString"
    ))
  end

  it "renders the edit issue form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => issues_path(@issue), :method => "post" do
      assert_select "input#issue_publication", :name => "issue[publication]"
    end
  end
end
