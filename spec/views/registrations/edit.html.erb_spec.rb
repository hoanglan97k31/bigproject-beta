require 'rails_helper'

RSpec.describe "registrations/edit", type: :view do
  before(:each) do
    @registration = assign(:registration, Registration.create!(
      :full_name => "MyString",
      :company => "MyString",
      :telephone => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit registration form" do
    render

    assert_select "form[action=?][method=?]", registration_path(@registration), "post" do

      assert_select "input[name=?]", "registration[full_name]"

      assert_select "input[name=?]", "registration[company]"

      assert_select "input[name=?]", "registration[telephone]"

      assert_select "input[name=?]", "registration[email]"
    end
  end
end
