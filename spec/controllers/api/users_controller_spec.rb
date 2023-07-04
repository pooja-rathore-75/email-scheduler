require 'rails_helper'

RSpec.describe Api::UsersController, type: :controller do
  describe 'GET #index' do
    it 'returns a list of users' do
      user1 = User.create(email: 'user1@example.com')
      user2 = User.create(email: 'user2@example.com')

      get :index

      expect(response).to have_http_status(:ok)
      expect(response.body).to include(user1.email)
      expect(response.body).to include(user2.email)
    end
  end

  describe 'POST #create' do
    it 'creates a new user' do
      user_params = { user: { email: 'newuser@example.com' } }

      post :create, params: user_params

      expect(response).to have_http_status(:ok)
      expect(User.last.email).to eq('newuser@example.com')
    end
  end

  describe 'GET #show' do
    it 'returns the details of a specific user' do
      user = User.create(email: 'user@example.com')

      get :show, params: { id: user.id }

      expect(response).to have_http_status(:ok)
      expect(response.body).to include(user.email)
    end
  end
end
