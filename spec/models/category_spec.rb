require 'rails_helper'

RSpec.describe Category, type: :model do
  context 'validations' do
    it { should validate_presence_of(:name) }
  end
  
  context 'specific column' do
    it { should have_db_column(:name).of_type(:string) }
  end
  
  context 'association' do
    it { should have_many(:products) }
  end
end