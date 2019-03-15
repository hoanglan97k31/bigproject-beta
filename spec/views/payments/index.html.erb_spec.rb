require 'rails_helper'

RSpec.describe "payments/index", type: :view do
  before(:each) do
    assign(:payments, [
      Payment.create!(
        :full_name => "Full Name",
        :company => "Company",
        :telephone => "Telephone",
        :email => "Email"
      ),
      Payment.create!(
        :full_name => "Full Name",
        :company => "Company",
        :telephone => "Telephone",
        :email => "Email"
      )
    ])
  end

  it "renders a list of payments" do
    render
    assert_select "tr>td", :text => "Full Name".to_s, :count => 2
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    assert_select "tr>td", :text => "Telephone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
