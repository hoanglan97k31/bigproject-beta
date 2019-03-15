require 'rails_helper'

RSpec.describe "payments/edit", type: :view do
  before(:each) do
    @payment = assign(:payment, Payment.create!(
      :full_name => "MyString",
      :company => "MyString",
      :telephone => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit payment form" do
    render

    assert_select "form[action=?][method=?]", payment_path(@payment), "post" do

      assert_select "input[name=?]", "payment[full_name]"

      assert_select "input[name=?]", "payment[company]"

      assert_select "input[name=?]", "payment[telephone]"

      assert_select "input[name=?]", "payment[email]"
    end
  end
end
