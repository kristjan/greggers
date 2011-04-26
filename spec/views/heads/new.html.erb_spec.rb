require 'spec_helper'

describe "heads/new.html.erb" do
  before(:each) do
    assign(:head, stub_model(Head,
      :name => "MyString",
      :photo_file_name => "MyString",
      :photo_content_type => "MyString",
      :photo_file_size => 1
    ).as_new_record)
  end

  it "renders new head form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => heads_path, :method => "post" do
      assert_select "input#head_name", :name => "head[name]"
      assert_select "input#head_photo_file_name", :name => "head[photo_file_name]"
      assert_select "input#head_photo_content_type", :name => "head[photo_content_type]"
      assert_select "input#head_photo_file_size", :name => "head[photo_file_size]"
    end
  end
end
