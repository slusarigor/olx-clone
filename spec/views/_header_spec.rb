require 'rails_helper'

RSpec.describe 'layouts/_header.html.erb' do
  context 'logged' do
    before do
      allow(view).to receive(:user_signed_in?).and_return(true)
    end

    it 'have the right links on the header' do
      render
      expect(rendered).to match(/logout/)
    end
  end

  context 'not logged' do
    before do
      allow(view).to receive(:user_signed_in?).and_return(false)
    end

    it 'have logout button' do
      render
      expect(rendered).to match(/login/)
    end
  end
end
