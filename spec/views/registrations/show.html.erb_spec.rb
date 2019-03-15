require 'rails_helper'

RSpec.describe "registrations/show", type: :view do
  before(:each) do
    @registration = assign(:registration, Registration.create!(
      :full_name => "Full Name",
      :company => "Company",
      :telephone => "Telephone",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Full Name/)
    expect(rendered).to match(/Company/)
    expect(rendered).to match(/Telephone/)
    expect(rendered).to match(/Email/)
  end
end
