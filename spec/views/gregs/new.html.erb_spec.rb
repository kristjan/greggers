require 'spec_helper'

describe "gregs/new.html.erb" do
  before(:each) do
    assign(:greg, stub_model(Greg,
      :name => "MyString",
      :x => 1,
      :y => 1,
      :head_id => 1,
      :photo_file_name => "MyString",
      :photo_content_type => "MyString",
      :photo_file_size => 1
    ).as_new_record)
  end

  it "renders new greg form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => gregs_path, :method => "post" do
      assert_select "input#greg_name", :name => "greg[name]"
      assert_select "input#greg_x", :name => "greg[x]"
      assert_select "input#greg_y", :name => "greg[y]"
      assert_select "input#greg_head_id", :name => "greg[head_id]"
      assert_select "input#greg_photo_file_name", :name => "greg[photo_file_name]"
      assert_select "input#greg_photo_content_type", :name => "greg[photo_content_type]"
      assert_select "input#greg_photo_file_size", :name => "greg[photo_file_size]"
    end
  end
end
