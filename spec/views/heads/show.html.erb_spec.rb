require 'spec_helper'

describe "heads/show.html.erb" do
  before(:each) do
    @head = assign(:head, stub_model(Head,
      :name => "Name",
      :photo_file_name => "Photo File Name",
      :photo_content_type => "Photo Content Type",
      :photo_file_size => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Photo File Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Photo Content Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
