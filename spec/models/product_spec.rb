require 'rails_helper'

RSpec.describe Product, type: :model do
  context 'validations' do
    it { should validate_presence_of(:tittle) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:price) }
  end
  
  context 'specific column' do
    it { should have_db_column(:tittle).of_type(:string) }
    it { should have_db_column(:description).of_type(:text) }
    it { should have_db_column(:price).of_type(:integer) }
    it { should have_db_column(:published).of_type(:boolean) }
    it { should have_db_column(:image_url).of_type(:string) }
  end

  context 'logic methods' do

  end
end