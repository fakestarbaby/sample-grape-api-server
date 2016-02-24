require 'rails_helper'

describe API::V1::Products do
  describe "GET /api/v1/products" do
    let!(:product) { create(:product) }

    it "return 200 with an array of all products" do
      is_expected.to eq 200
      expect(response.body).to include_json(product.to_json)
    end
  end
end
