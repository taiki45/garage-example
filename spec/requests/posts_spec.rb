require 'rails_helper'

RSpec.describe 'posts', type: :request do
  include RequestHelper

  describe 'GET /v1/posts' do
    let!(:posts) { create_list(:post, 3) }

    it 'returns post resources' do
      get '/v1/posts', params, env
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /v1/posts' do
    before do
      params[:title] = 'abc'
      params[:body] = 'body for post'
    end

    it 'creates post resource' do
      post '/v1/posts', params, env
      expect(response).to have_http_status(201)
    end
  end

  describe 'GET /v1/posts/:post_id' do
    context 'with owned published post' do
      let!(:post) { create(:post, user: resource_owner) }

      it 'returns post resource' do
        get "/v1/posts/#{post.id}", params, env
        expect(response).to have_http_status(200)
      end
    end

    context 'with not owned published post' do
      let!(:post) { create(:post, user: other) }
      let(:other) { create(:user) }

      it 'returns post resource' do
        get "/v1/posts/#{post.id}", params, env
        expect(response).to have_http_status(200)
      end
    end

    context 'with owned draft post' do
      let!(:post) { create(:post, user: resource_owner, published_at: nil) }

      it 'returns draft post resource' do
        get "/v1/posts/#{post.id}", params, env
        expect(response).to have_http_status(200)
      end
    end

    context 'with not owned draft post' do
      let!(:post) { create(:post, user: other, published_at: nil) }
      let(:other) { create(:user) }

      it 'returns 403' do
        get "/v1/posts/#{post.id}", params, env
        expect(response).to have_http_status(403)
      end
    end
  end

  describe 'PUT /v1/posts/:post_id' do
    let!(:post) { create(:post, user: resource_owner) }

    before do
      params[:title] = 'abc'
      params[:body] = 'body for post'
    end

    it 'updates post resource' do
      put "/v1/posts/#{post.id}", params, env
      expect(response).to have_http_status(204)
    end
  end

  describe 'DELETE /v1/posts/:post_id' do
    let!(:post) { create(:post, user: resource_owner) }

    it 'deletes post resource' do
      delete "/v1/posts/#{post.id}", params, env
      expect(response).to have_http_status(204)
    end
  end
end
