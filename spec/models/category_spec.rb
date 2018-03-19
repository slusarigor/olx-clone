require 'rails_helper'

RSpec.describe Category, type: :model do
  subject { described_class.new(name: 'Bags') }

  describe 'Validations' do
    it { is_expected.to be_valid }
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end

  describe 'Associations' do
    it { is_expected.to belong_to(:parent).with_foreign_key('parent_id') }
    it { is_expected.to have_many(:products) }
  end
end
