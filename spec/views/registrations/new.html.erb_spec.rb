require 'rails_helper'

RSpec.describe "registrations/new", type: :view do
  before(:each) do
    assign(:registration, Registration.new(
      :full_name => "MyString",
      :company => "MyString",
      :telephone => "MyString",
      :email => "MyString"
    ))
  end

  it "renders new registration form" do
    render

    assert_select "form[action=?][method=?]", registrations_path, "post" do

      assert_select "input[name=?]", "registration[full_name]"

      assert_select "input[name=?]", "registration[company]"

      assert_select "input[name=?]", "registration[telephone]"

      assert_select "input[name=?]", "registration[email]"
    end
  end
end
