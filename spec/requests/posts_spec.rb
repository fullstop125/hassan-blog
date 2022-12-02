require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get user_posts_path(user_id: 1)
      expect(response).to have_http_status(:ok)
      expect(response.body).to include('Here is a list of posts for a given user')
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get user_post_path(user_id: 1, id: 1)
      expect(response).to have_http_status(:ok)
      expect(response.body).to include('Here is a post by id')
    end
  end
end
