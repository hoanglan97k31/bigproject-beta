require 'rails_helper'

RSpec.describe OrderStatus, type: :model do

  context 'specific column' do
    it { should have_db_column(:name).of_type(:string) }
  end

  context 'association' do
    it { should have_many(:orders) }
  end
end