require 'rails_helper'

RSpec.describe OrderItem, type: :model do

  context 'validations' do
    it { should validate_presence_of(:quantity) }
  end

  context 'specific column' do
    it { should have_db_column(:product_id).of_type(:integer) }
    it { should have_db_column(:order_id).of_type(:integer) }
    it { should have_db_column(:unit_price).of_type(:decimal) }
    it { should have_db_column(:quantity).of_type(:integer) }
    it { should have_db_column(:total_price).of_type(:decimal) }
  end

  context 'association' do
    it { should belong_to(:product) }
    it { should belong_to(:order) }
  end

  context 'logic methods' do
    it 'total_price' do

    end
  end

end