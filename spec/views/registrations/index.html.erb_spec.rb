require 'rails_helper'

RSpec.describe "registrations/index", type: :view do
  before(:each) do
    assign(:registrations, [
      Registration.create!(
        :full_name => "Full Name",
        :company => "Company",
        :telephone => "Telephone",
        :email => "Email"
      ),
      Registration.create!(
        :full_name => "Full Name",
        :company => "Company",
        :telephone => "Telephone",
        :email => "Email"
      )
    ])
  end

  it "renders a list of registrations" do
    render
    assert_select "tr>td", :text => "Full Name".to_s, :count => 2
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    assert_select "tr>td", :text => "Telephone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
