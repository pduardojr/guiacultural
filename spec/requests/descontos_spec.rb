require 'rails_helper'

RSpec.describe "Descontos", type: :request do
  describe "GET /descontos" do
    it "works! (now write some real specs)" do
      get descontos_path
      expect(response).to have_http_status(200)
    end
  end
end
