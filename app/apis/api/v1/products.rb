module API
  module V1
    class Products < Grape::API
      resource :products do
        # GET /api/v1/product
        desc 'Return all products.'
        get do
          Product.all
        end

        # GET /api/v1/product/:id
        desc 'Return a product'
        params do
          requires :id, type: Integer, desc: 'Product id.'
        end
        get ':id' do
          present Product.find(params[:id]), with: Entity::V1::Products
        end
      end
    end
  end
end
