require 'rails_helper'

RSpec.describe Category, type: :model do
  subject { described_class.new(name: 'Bags') }

  describe 'Validations' do
    it 'is valid' do
      expect(subject).to be_valid
    end

    it 'is not valid without name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end
  end

  describe 'Associations' do
    it { is_expected.to belong_to(:parent).with_foreign_key('parent_id') }
  end
end
