require 'rails_helper'

RSpec.describe Product, type: :model do
  subject { FactoryBot.build(:product) }

  describe 'Validations' do
    it { is_expected.to be_valid }
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_least(5) }
    it { should validate_presence_of(:description) }
    it { should validate_length_of(:description).is_at_least(20) }
  end

  describe 'Associations' do
    it { is_expected.to belong_to(:category) }
    it { is_expected.to belong_to(:user) }
  end
end
