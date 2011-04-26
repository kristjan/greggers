require 'spec_helper'

describe "heads/edit.html.erb" do
  before(:each) do
    @head = assign(:head, stub_model(Head,
      :name => "MyString",
      :photo_file_name => "MyString",
      :photo_content_type => "MyString",
      :photo_file_size => 1
    ))
  end

  it "renders the edit head form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => heads_path(@head), :method => "post" do
      assert_select "input#head_name", :name => "head[name]"
      assert_select "input#head_photo_file_name", :name => "head[photo_file_name]"
      assert_select "input#head_photo_content_type", :name => "head[photo_content_type]"
      assert_select "input#head_photo_file_size", :name => "head[photo_file_size]"
    end
  end
end
