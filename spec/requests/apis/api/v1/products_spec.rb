require 'rails_helper'

describe API::V1::Products do
  let!(:product) { create(:product) }

  describe "GET /api/v1/products" do
    it "return 200 with an array of all products" do
      is_expected.to eq 200
      expect(response.body).to include_json(product.to_json)
    end
  end

  describe "GET /api/v1/products/:id" do
    let(:id) { product.id }

    it "return 200 with a product" do
      is_expected.to eq 200
    end
  end
end
