require 'rails_helper'
require 'capybara/rails'

RSpec.describe "Pages", type: :request do
  # render_views

  describe "GET /home" do
    it "returns http success" do
      get "/pages/home"
      expect(response).to have_http_status(:success)
    end
    # it "returns right title" do
    #   get "/pages/home"
    #   expect(response).to have_selector('title', :content => "Accueil")
    # end
  end

  describe "GET /contact" do
    it "returns http success contact" do
      get "/pages/contact"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /about" do
    it "returns http success" do
      get "/pages/about"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /help" do
    it "returns http success" do
      get "/pages/help"
      expect(response).to have_http_status(:success)
    end
  end

end
