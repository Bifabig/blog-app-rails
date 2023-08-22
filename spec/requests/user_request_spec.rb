require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET ' do
    it 'correct response status for /index' do
      get '/users'
      expect(response).to be_successful
    end

    it 'response body includes correct placeholder text for /index' do
      get '/users'
      expect(response.body).to include('Users are coming soon!')
    end

    it 'correct response status for /show' do
      get '/users/1'
      expect(response).to be_successful
    end

    it 'response body includes correct placeholder text for /show' do
      get '/users/1'
      expect(response.body).to include('Here are details about the User!')
    end
  end
end
