require 'rails_helper'

RSpec.describe Admin::CategoriesController, type: :controller do
  describe 'GET index' do
    subject { get 'index' }

    include_examples 'access only for admins'
  end
end
