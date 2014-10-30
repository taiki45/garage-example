require 'rails_helper'

RSpec.describe 'users', type: :request do
  include RequestHelper

  describe 'GET /v1/users' do
    let!(:users) { create_list(:user, 3) }

    it 'returns user resources' do
      get '/v1/users', params, env
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /v1/users/:user_id' do
    let!(:user) { create(:user, name: 'alice') }

    it 'returns user resource' do
      get "/v1/users/#{user.id}", params, env
      expect(response).to have_http_status(200)
    end
  end

  describe 'PUT /v1/users/:user_id' do
    let!(:user) { resource_owner }
    before { params[:name] = 'bob' }

    context 'with owned resource' do
      it 'updates user resource' do
        put "/v1/users/#{user.id}", params, env
        expect(response).to have_http_status(204)
      end
    end

    context 'without owned resource' do
      let!(:other) { create(:user, name: 'raymonde') }

      it 'returns 403' do
        put "/v1/users/#{other.id}", params, env
        expect(response).to have_http_status(403)
      end
    end
  end
end
