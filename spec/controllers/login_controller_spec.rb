require 'rails_helper'

RSpec.describe LoginController, type: :controller do
  context 'GET /login' do
    it 'returns the login form' do
      get :index
      expect(response).to render_template :"login/index"
    end
  end


  context 'POST /login' do
    it 'lets a known users to log in' do
      user = FactoryGirl.create(:user)
      post :auth, username: user.email, password: user.password



      expect(session[:username]).to_not be_nil
    end

  end
end
