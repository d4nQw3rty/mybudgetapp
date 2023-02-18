require 'rails_helper'

RSpec.describe 'Users', type: :request do
  before(:each) do
    @user = User.new(name: 'cesar', email: 'cesar@4a6z.com', password: '123456', password_confirmation: '123456')
    @user.skip_confirmation!
    @user.confirm
    @user.save
    sign_in @user
  end

  describe 'group#index' do
    it 'works! (now write some real specs)' do
      get groups_path
      expect(response).to have_http_status(200)
    end

    it 'renders the index template' do
      get groups_path
      expect(response).to render_template('index')
    end

    it 'does not render a different template' do
      get groups_path
      expect(response).to_not render_template('new')
    end
  end
end
