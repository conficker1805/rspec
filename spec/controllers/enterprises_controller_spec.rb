require "rails_helper"

describe EnterprisesController do
  describe 'Test render JSON' do
    def do_request
      get :rspec_json
    end

    it "render json" do
      do_request
      expected = Hash[:status, 'ok', :message, 'Successfully'].to_json
      expect(response.body).to eq expected
    end
  end

  describe "Test render NOTHING" do
    def do_request
      get :rspec_nothing
    end

    it "render nothing" do
      do_request
      expect(response).to render_template nil
    end
  end

  describe "Test render TEMPLATE" do
    def do_request
      get :rspec_template
    end

    it "render template" do
      do_request
      expect(response).to render_template 'enterprises/my_template'
    end
  end

  describe "Test REDIRECT" do
    let(:admin) { create :admin }

    def do_request
      get :rspec_redirect
    end

    it "redirect with param" do
      do_request
      expect(response).to redirect_to root_path(id: 1)
    end
  end

  describe "Test flash message" do
    def do_request
      get :rspec_flash_message
    end

    it "has a notice message" do
      do_request
      expect(flash[:notice]).not_to be_nil
      expect(flash[:alert]).to be_nil
    end
  end

  describe "Test render HTTP STATUS" do
    def do_request
      get :rspec_http_status
    end

    it "render http status" do
      do_request
      expect(response).to render_template file: "#{Rails.root}/public/404.html"
      expect(response).to have_http_status 404
    end
  end
end
