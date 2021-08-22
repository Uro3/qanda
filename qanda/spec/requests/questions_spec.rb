require 'rails_helper'

RSpec.describe "Questions", type: :request do
  let(:user) { FactoryBot.create(:user) }

  describe "GET /" do
    it "returns http success" do
      get "/questions"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    context "when user is logged in" do
      it "returns http success" do
        sign_in user
        get "/questions/new"
        expect(response).to have_http_status(:success)
      end
    end
    
    context "when user is not logged in" do
      it "returns http redirect" do
        get "/questions/new"
        expect(response).to have_http_status(:redirect)
      end
    end
  end

  describe "GET /show" do
    let(:question) { FactoryBot.create(:question, user: user) }

    it "returns http success" do
      get question_path(question)
      expect(response).to have_http_status(:success)
    end
  end
end
