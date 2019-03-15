require 'rails_helper'

RSpec.describe "payments/new", type: :view do
  before(:each) do
    assign(:payment, Payment.new(
      :full_name => "MyString",
      :company => "MyString",
      :telephone => "MyString",
      :email => "MyString"
    ))
  end

  it "renders new payment form" do
    render

    assert_select "form[action=?][method=?]", payments_path, "post" do

      assert_select "input[name=?]", "payment[full_name]"

      assert_select "input[name=?]", "payment[company]"

      assert_select "input[name=?]", "payment[telephone]"

      assert_select "input[name=?]", "payment[email]"
    end
  end
end
