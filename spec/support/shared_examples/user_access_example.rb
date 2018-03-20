RSpec.shared_examples 'access only for logged users' do
  context 'not logged' do
    it 'redirect to user login page' do
      is_expected.to redirect_to(new_user_session_path)
    end
  end

  context 'logged' do
    login_user

    it { is_expected.to have_http_status(200) }
  end
end
