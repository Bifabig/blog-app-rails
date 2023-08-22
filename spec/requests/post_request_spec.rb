require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET ' do
    it 'returns http success for /index' do
      get '/users/1/posts'
      expect(response).to have_http_status(:success)
    end

    it 'response body includes correct placeholder text for /index' do
      get '/users/1/posts'
      expect(response.body).to include('Posts are coming soon!')
    end

    it 'correct response status for /show' do
      get '/users/1/posts/1'
      expect(response).to be_successful
    end

    it 'response body includes correct placeholder text for show' do
      get '/users/1/posts/1'
      expect(response.body).to include('Here is a list of posts for a given user!')
    end
  end
end
