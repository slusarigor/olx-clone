require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  describe 'GET new' do
    subject { get 'new' }

    include_examples 'access only for logged users'
  end

  describe 'GET show' do
    let!(:product) { FactoryBot.create(:product) }

    it 'success and render to edit page' do
      get :show, params: { id: product.id }
      expect(response).to have_http_status(200)
    end
  end
end
