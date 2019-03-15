require 'rails_helper'

RSpec.describe Order, type: :model do

  context 'specific column' do
    it { should have_db_column(:subtotal).of_type(:decimal) }
    it { should have_db_column(:tax).of_type(:decimal) }
    it { should have_db_column(:shipping).of_type(:decimal) }
    it { should have_db_column(:total).of_type(:decimal) }
    it { should have_db_column(:order_status_id).of_type(:integer) }
  end
  
  context 'association' do
    it { should have_many(:order_items) }
    it { should belong_to(:order_status) }
  end

  context 'logic method' do
    
  end
end