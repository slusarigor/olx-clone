require 'rails_helper'

RSpec.describe Admin::UsersController, type: :controller do
  describe 'GET index' do
    subject { get 'index' }

    context 'not logged' do
      it 'redirect to admin login page' do
        is_expected.to redirect_to(new_admin_user_session_path)
      end
    end

    context 'logged' do
      login_admin

      it { is_expected.to have_http_status(200) }
    end
  end
end
